import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF312E2E),
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          left: BorderSide(
            color: Color(0xFFFF6E47),
            width: 4,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: size.width * 0.6),
            child: const Text(
              'Đề thi chuyên viên nhân sự VCB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '18/09/2023  15:34',
                style: TextStyle(
                  color: Color(0xFFC1C1CD),
                  fontSize: 13,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    '150/200',
                    style: TextStyle(
                      color: Color(0xFFC1C1CD),
                      fontSize: 13,
                    ),
                  ),
                  LinearPercentIndicator(
                    width: 100,
                    lineHeight: 4,
                    backgroundColor: Colors.white,
                    progressColor: const Color(0xFF05A660),
                    percent: 150 / 200,
                    barRadius: const Radius.circular(100),
                    animation: true,
                    animationDuration: 2000,
                    padding: EdgeInsets.zero,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
