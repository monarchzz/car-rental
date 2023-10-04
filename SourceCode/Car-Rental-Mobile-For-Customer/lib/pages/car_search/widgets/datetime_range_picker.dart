import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:flutter/material.dart';

class DateTimeRangePicker extends StatefulWidget {
  const DateTimeRangePicker({
    Key? key,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  final DateTime startDate;
  final DateTime endDate;

  @override
  State<DateTimeRangePicker> createState() => _DateTimeRangePickerState();
}

class _DateTimeRangePickerState extends State<DateTimeRangePicker> {
  late DateTime startDate;
  late DateTime endDate;

  @override
  void initState() {
    startDate = widget.startDate;
    endDate = widget.endDate;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      color: Colors.black,
      fontSize: 16,
    );

    bool timeIsValid() {
      final currentDate = DateTime.now();
      // 2 hour
      if (startDate
          .isBefore(currentDate.add(const Duration(hours: 1, minutes: 59)))) {
        return false;
      }

      // 6 hour
      if (endDate
          .isBefore(startDate.add(const Duration(hours: 5, minutes: 59)))) {
        return false;
      }

      if (startDate.add(const Duration(days: 7)).isBefore(endDate)) {
        return false;
      }

      return true;
    }

    Future<DateTime?> pickDateTime({
      required BuildContext context,
      DateTime? firstDate,
      DateTime? lastDate,
    }) async {
      final date = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: firstDate ?? DateTime.now(),
        lastDate: lastDate ??
            firstDate?.add(
              const Duration(
                days: 7,
              ),
            ) ??
            DateTime.now().add(
              const Duration(days: 365),
            ),
      );
      if (date != null) {
        // ignore: use_build_context_synchronously
        final time = await showTimePicker(
          context: context,
          initialTime: TimeOfDay.fromDateTime(startDate),
        );

        if (time != null) {
          return DateTime(
            date.year,
            date.month,
            date.day,
            time.hour,
            time.minute,
          );
        }
      }

      return null;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Chọn thời gian',
        ),
        backgroundColor: CustomColors.appBarColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context, {
              'startDate': widget.startDate,
              'endDate': widget.endDate,
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(s08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: s16),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: s08),
                child: Row(
                  children: [
                    Text(
                      'Ngày bắt đầu:  ',
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dateToString(startDate),
                      style: style,
                    ),
                  ],
                ),
              ),
              onTap: () {
                pickDateTime(
                  context: context,
                  // lastDate: endDate,
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      startDate = value;
                    });
                  }
                });
              },
            ),
            const SizedBox(height: s16),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: s08),
                child: Row(
                  children: [
                    Text(
                      'Ngày kết thúc:  ',
                      style: style.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dateToString(endDate),
                      style: style,
                    ),
                  ],
                ),
              ),
              onTap: () {
                pickDateTime(context: context, firstDate: startDate)
                    .then((value) {
                  if (value != null) {
                    setState(() {
                      endDate = value;
                    });
                  }
                });
              },
            ),
            const SizedBox(height: s16),
            const Text(
              'Thời gian thuê tối thiểu là 6 giờ',
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: s24),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: timeIsValid()
                        ? () {
                            Navigator.pop(
                              context,
                              {
                                'startDate': startDate,
                                'endDate': endDate,
                              },
                            );
                          }
                        : null,
                    child: const Text('Lưu'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
