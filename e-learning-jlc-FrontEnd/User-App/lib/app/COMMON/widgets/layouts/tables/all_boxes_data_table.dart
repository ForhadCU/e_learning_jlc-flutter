import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';


import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class AllBoxesDataTable extends StatelessWidget {
  final List<String> headers;
  final List<dynamic> rowDataList; //model
  final Color headerColor;
  final Color rowColor1;
  final Color rowColor2;

  const AllBoxesDataTable({
    super.key,
    required this.headers,
    this.headerColor = Colors.blue,
    this.rowColor1 = const Color(0xFFF5F5F5),
    this.rowColor2 = Colors.white,
    required this.rowDataList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: TSizes.spaceBtwSections),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(color: Colors.grey.shade300),
            columnWidths: {
              for (int i = 0; i < headers.length; i++)
                i: const IntrinsicColumnWidth(),
              // i: const FixedColumnWidth(500),
            },
            children: [
              // Header row
              TableRow(
                decoration: BoxDecoration(color: TColors.grey),
                children: headers
                    .map(
                      (h) => Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: TSizes.sm,
                          horizontal: TSizes.xl,
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          h.tr,
                          style: const TextStyle(
                            color: TColors.textPrimary,
                            fontWeight: FontWeight.w600,
                            fontSize: TSizes.fontSizeXs,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              // Data rows
              ...List.generate(rowDataList.length, (rowIdx) {
                final row = rowDataList[rowIdx];
                final bgColor = rowIdx.isEven ? rowColor1 : rowColor2;
                return TableRow(
                  decoration: BoxDecoration(color: bgColor),
                  children: [
                    // TLangKeys.boxId,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.id,
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),

                    // TLangKeys.boxName,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.boxName,
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.productName,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.product != null ? row.product!.name : "-",
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.organization,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.organization.name,
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.boxType,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.boxType,
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.currentStocks,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.qty.toString(),
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.maxLimit,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.higherThreshhold.toString(),
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.minLimit,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.lowerThreshhold.toString(),
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.weightPerPiece,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.perUnitValue.toString(),
                        style: TextStyle(
                          color: TColors.textPrimary,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.connectionStatus,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.connected ? "Connected" : "Disconnected",
                        style: TextStyle(
                          color: row.connected
                              ? TColors.buttonPrimary
                              : TColors.error,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                    // TLangKeys.assignedStatus,
                    _vCellTemplate(
                      child: Text(
                        textAlign: TextAlign.center,
                        row.product != null ? "Assigned" : "Unassigned",
                        style: TextStyle(
                          color: row.product != null
                              ? TColors.buttonPrimary
                              : TColors.darkerGrey,
                          fontSize: TSizes.fontSizeXs,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _vCellTemplate({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TSizes.md,
        vertical: TSizes.xs,
      ),
      child: child,
    );
  }
}
