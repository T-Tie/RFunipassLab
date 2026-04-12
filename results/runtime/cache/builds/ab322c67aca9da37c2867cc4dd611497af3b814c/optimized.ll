; ModuleID = '<stdin>'
source_filename = "/tmp/tmpp2vqv40i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i54 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [500 x [41 x i8]], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 20500, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #6
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %if.else34.i, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond4

if.else34.i:                                      ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %add.ptr, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv96 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next97, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv96, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body6

for.cond16.preheader:                             ; preds = %for.cond4
  %invariant.gep = getelementptr i8, ptr %a, i64 -41
  br label %for.cond16

for.body6:                                        ; preds = %for.cond4
  %add.ptr8 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv96
  %call10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr8) #7
  %2 = trunc i64 %call10 to i32
  %conv = add i32 %2, 1
  %add.ptr12 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv96
  store i32 %conv, ptr %add.ptr12, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond4, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc42
  %.pre112 = phi i32 [ %0, %for.cond16.preheader ], [ %.pre, %for.inc42 ]
  %indvars.iv103 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next104, %for.inc42 ]
  %sum.0 = phi i32 [ 0, %for.cond16.preheader ], [ %sum.1, %for.inc42 ]
  %k.0 = phi i32 [ 0, %for.cond16.preheader ], [ %k.1, %for.inc42 ]
  %3 = sext i32 %.pre112 to i64
  %cmp17 = icmp slt i64 %indvars.iv103, %3
  br i1 %cmp17, label %for.body18, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond16
  %4 = zext nneg i32 %k.0 to i64
  br label %for.cond45

for.body18:                                       ; preds = %for.cond16
  %add.ptr20 = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv103
  %5 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  %add21 = add nsw i32 %5, %sum.0
  %cmp22 = icmp sgt i32 %add21, 81
  br i1 %cmp22, label %for.cond23.preheader, label %for.inc42

for.cond23.preheader:                             ; preds = %for.body18
  %6 = add nsw i64 %indvars.iv103, -1
  %7 = zext nneg i32 %k.0 to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv100 = phi i64 [ %7, %for.cond23.preheader ], [ %indvars.iv.next101, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %cmp24 = icmp slt i64 %indvars.iv100, %6
  br i1 %cmp24, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond23
  %add.ptr27 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv100
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr27) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr27, i64 noundef %call.i.i)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !13
  %vtable.i32 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i33 = getelementptr i8, ptr %vtable.i32, i64 -24
  %vbase.offset.i34 = load i64, ptr %vbase.offset.ptr.i33, align 8
  %gep91 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i34
  %8 = load i64, ptr %gep91, align 8, !tbaa !16
  %cmp.not.i = icmp eq i64 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body25
  %call1.i37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body25
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond23, !llvm.loop !27

for.end33:                                        ; preds = %for.cond23
  %gep92 = getelementptr [41 x i8], ptr %invariant.gep, i64 %indvars.iv103
  %call.i.i38 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %gep92) #6
  %call1.i39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %gep92, i64 noundef %call.i.i38)
  %vtable.i76 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i77 = getelementptr i8, ptr %vtable.i76, i64 -24
  %vbase.offset.i78 = load i64, ptr %vbase.offset.ptr.i77, align 8
  %add.ptr.i79 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i78
  %call.i80 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i79, i8 noundef signext 10)
  %call1.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i80)
  %call.i.i82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i81)
  %9 = trunc nuw nsw i64 %indvars.iv103 to i32
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body18, %for.end33
  %.pre = phi i32 [ %.pre.pre, %for.end33 ], [ %.pre112, %for.body18 ]
  %sum.1 = phi i32 [ %5, %for.end33 ], [ %add21, %for.body18 ]
  %k.1 = phi i32 [ %9, %for.end33 ], [ %k.0, %for.body18 ]
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond16, !llvm.loop !28

for.cond45:                                       ; preds = %for.cond45.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66
  %10 = phi i32 [ %.pre112, %for.cond45.preheader ], [ %.pre111, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66 ]
  %indvars.iv108 = phi i64 [ %4, %for.cond45.preheader ], [ %indvars.iv.next109, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66 ]
  %sub46 = add nsw i32 %10, -1
  %11 = sext i32 %sub46 to i64
  %cmp47 = icmp slt i64 %indvars.iv108, %11
  br i1 %cmp47, label %for.body48, label %for.end56

for.body48:                                       ; preds = %for.cond45
  %add.ptr50 = getelementptr inbounds nuw [41 x i8], ptr %a, i64 %indvars.iv108
  %call.i.i46 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr50) #6
  %call1.i47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr50, i64 noundef %call.i.i46)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i54)
  store i8 32, ptr %__c.addr.i54, align 1, !tbaa !13
  %vtable.i55 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i56 = getelementptr i8, ptr %vtable.i55, i64 -24
  %vbase.offset.i57 = load i64, ptr %vbase.offset.ptr.i56, align 8
  %gep93 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i57
  %12 = load i64, ptr %gep93, align 8, !tbaa !16
  %cmp.not.i60 = icmp eq i64 %12, 0
  br i1 %cmp.not.i60, label %if.end.i64, label %if.then.i61

if.then.i61:                                      ; preds = %for.body48
  %call1.i62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i54, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66

if.end.i64:                                       ; preds = %for.body48
  %call2.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit66: ; preds = %if.then.i61, %if.end.i64
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i54)
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %.pre111 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !29

for.end56:                                        ; preds = %for.cond45
  %idx.ext57 = sext i32 %10 to i64
  %add.ptr58 = getelementptr inbounds [41 x i8], ptr %a, i64 %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, ptr %add.ptr58, i64 -41
  %call.i.i67 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %add.ptr59) #6
  %call1.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %add.ptr59, i64 noundef %call.i.i67)
  %vtable.i83 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i84 = getelementptr i8, ptr %vtable.i83, i64 -24
  %vbase.offset.i85 = load i64, ptr %vbase.offset.ptr.i84, align 8
  %add.ptr.i86 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i85
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i86, i8 noundef signext 10)
  %call1.i87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i87)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 20500, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11}
