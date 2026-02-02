// import 'package:flutter/material.dart';
// import 'package:officer/theme/colors.dart';

// class PaginationControls extends StatelessWidget {
//   final int currentPage;
//   final int totalPages;
//   final int pageSize;
//   final Function(int) onPageChanged;
//   final Function(int)? onPageSizeChanged;
//   final bool isLoading;
//   final List<int> pageSizeOptions;

//   const PaginationControls({
//     super.key,
//     required this.currentPage,
//     required this.totalPages,
//     required this.pageSize,
//     required this.onPageChanged,
//     this.onPageSizeChanged,
//     this.isLoading = false,
//     this.pageSizeOptions = const [10, 25, 50, 100],
//   });

//   @override
//   Widget build(BuildContext context) {
//     if (totalPages <= 1) return const SizedBox.shrink();

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 16),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // Previous page button
//           IconButton(
//             onPressed: currentPage > 0 && !isLoading
//                 ? () => onPageChanged(currentPage - 1)
//                 : null,
//             icon: const Icon(Icons.chevron_left, color: Colors.white, size: 28),
//             tooltip: 'Previous page',
//             padding: const EdgeInsets.all(8),
//             constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
//           ),

//           // Page number indicator
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             decoration: BoxDecoration(
//               color: appBackgroundDark,
//               borderRadius: BorderRadius.circular(8),
//               border: Border.all(
//                 color: Colors.white.withOpacity(0.2),
//                 width: 1,
//               ),
//             ),
//             child: Text(
//               '${currentPage + 1} / $totalPages',
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//           ),

//           // Next page button
//           IconButton(
//             onPressed: currentPage < totalPages - 1 && !isLoading
//                 ? () => onPageChanged(currentPage + 1)
//                 : null,
//             icon:
//                 const Icon(Icons.chevron_right, color: Colors.white, size: 28),
//             tooltip: 'Next page',
//             padding: const EdgeInsets.all(8),
//             constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
//           ),
//         ],
//       ),
//     );
//   }
// }
