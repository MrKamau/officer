// import 'package:flutter/material.dart';
// import 'package:officer/theme/colors.dart';
// import 'dart:async'; // Added for Timer

// class SearchBarWidget extends StatefulWidget {
//   final Function(String) onSearch;
//   final String? initialQuery;
//   final String hintText;
//   final bool isLoading;

//   const SearchBarWidget({
//     super.key,
//     required this.onSearch,
//     this.initialQuery,
//     this.hintText = 'Search...',
//     this.isLoading = false,
//   });

//   @override
//   State<SearchBarWidget> createState() => _SearchBarWidgetState();
// }

// class _SearchBarWidgetState extends State<SearchBarWidget> {
//   late TextEditingController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = TextEditingController(text: widget.initialQuery);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _performSearch() {
//     final query = _controller.text.trim();
//     if (query.isNotEmpty) {
//       widget.onSearch(query);
//     }
//   }

//   void _clearSearch() {
//     _controller.clear();
//     widget.onSearch('');
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isMobile = MediaQuery.of(context).size.width < 600;

//     return Container(
//       width: isMobile ? double.infinity : 600,
//       height: 56,
//       decoration: BoxDecoration(
//         color: appCardBright,
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(
//           color: Colors.white.withOpacity(0.2),
//           width: 1,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 20,
//             offset: const Offset(0, 4),
//           ),
//         ],
//       ),
//       child: TextField(
//         controller: _controller,
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 18,
//           fontWeight: FontWeight.w400,
//         ),
//         decoration: InputDecoration(
//           hintText: widget.hintText,
//           hintStyle: TextStyle(
//             color: Colors.white.withOpacity(0.5),
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//           ),
//           prefixIcon: Icon(
//             Icons.search,
//             color: Colors.white.withOpacity(0.7),
//             size: 24,
//           ),
//           suffixIcon: _controller.text.isNotEmpty
//               ? IconButton(
//                   onPressed: _clearSearch,
//                   icon: Icon(
//                     Icons.close,
//                     color: Colors.white.withOpacity(0.7),
//                     size: 20,
//                   ),
//                   padding: EdgeInsets.zero,
//                   constraints:
//                       const BoxConstraints(minWidth: 40, minHeight: 40),
//                 )
//               : null,
//           border: InputBorder.none,
//           contentPadding:
//               const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
//         ),
//         onSubmitted: (_) => _performSearch(),
//         onChanged: (value) {
//           if (value.isEmpty) {
//             _clearSearch();
//           }
//         },
//       ),
//     );
//   }

//   // Removed debounce-triggered search to avoid freezing and only search on submit
// }
