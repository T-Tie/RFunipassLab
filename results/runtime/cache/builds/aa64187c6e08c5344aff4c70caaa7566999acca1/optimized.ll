; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3i8ebbbg.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef nonnull align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %add.ptr105 = getelementptr inbounds nuw i8, ptr %a, i64 424
  br label %for.cond

for.cond:                                         ; preds = %for.inc166, %entry
  %z1.0 = phi i32 [ 0, %entry ], [ %inc167, %for.inc166 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %z1.0, %0
  br i1 %cmp, label %for.cond2, label %for.end168

for.cond2:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %3, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp3 = icmp slt i64 %indvars.iv68, %2
  br i1 %cmp3, label %for.cond5.preheader, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %1, -1
  %smax129 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond15

for.cond5.preheader:                              ; preds = %for.cond2
  %add.ptr = getelementptr inbounds nuw [105 x i32], ptr %a, i64 %indvars.iv68
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc
  %3 = phi i32 [ %1, %for.cond5.preheader ], [ %.pre, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next, %for.inc ]
  %4 = sext i32 %3 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond2, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc161
  %indvars.iv124 = phi i32 [ %sub, %for.cond15.preheader ], [ %indvars.iv.next125, %for.inc161 ]
  %indvars.iv75 = phi i32 [ %1, %for.cond15.preheader ], [ %indvars.iv.next76, %for.inc161 ]
  %k.0 = phi i32 [ 0, %for.cond15.preheader ], [ %inc162, %for.inc161 ]
  %sum.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.inc161 ]
  %smax126 = call i32 @llvm.smax.i32(i32 %indvars.iv124, i32 noundef 0)
  %smax118 = call i32 @llvm.smax.i32(i32 %indvars.iv75, i32 noundef 2)
  %exitcond130.not = icmp eq i32 %k.0, %smax129
  br i1 %exitcond130.not, label %for.inc166, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond15
  %smax112 = call i32 @llvm.smax.i32(i32 %indvars.iv75, i32 noundef 0)
  %wide.trip.count85 = zext nneg i32 %smax112 to i64
  %wide.trip.count = zext i32 %indvars.iv75 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc56
  %indvars.iv82 = phi i64 [ 0, %for.cond18.preheader ], [ %indvars.iv.next83, %for.inc56 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count85
  br i1 %exitcond86.not, label %for.cond59.preheader, label %for.cond22.preheader

for.cond59.preheader:                             ; preds = %for.cond18
  br label %for.cond59

for.cond22.preheader:                             ; preds = %for.cond18
  %add.ptr28 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 %indvars.iv82
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body25
  %indvars.iv71 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next72, %for.body25 ]
  %min.0 = phi i32 [ 100000000, %for.cond22.preheader ], [ %spec.select, %for.body25 ]
  %exitcond.not = icmp eq i64 %indvars.iv71, %wide.trip.count
  br i1 %exitcond.not, label %for.cond42.preheader, label %for.body25

for.cond42.preheader:                             ; preds = %for.cond22
  br label %for.cond42

for.body25:                                       ; preds = %for.cond22
  %add.ptr31 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv71
  %5 = load i32, ptr %add.ptr31, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %5, i32 %min.0)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond22, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc53
  %indvars.iv77 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next78, %for.inc53 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count
  br i1 %exitcond81.not, label %for.inc56, label %for.inc53

for.inc53:                                        ; preds = %for.cond42
  %add.ptr51 = getelementptr inbounds nuw i32, ptr %add.ptr28, i64 %indvars.iv77
  %6 = load i32, ptr %add.ptr51, align 4, !tbaa !5, !invariant.load !13
  %sub52 = sub nsw i32 %6, %min.0
  store i32 %sub52, ptr %add.ptr51, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond42, !llvm.loop !15

for.inc56:                                        ; preds = %for.cond42
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond18, !llvm.loop !16

for.cond59:                                       ; preds = %for.cond59.preheader, %for.inc99
  %indvars.iv97 = phi i64 [ 0, %for.cond59.preheader ], [ %indvars.iv.next98, %for.inc99 ]
  %exitcond102.not = icmp eq i64 %indvars.iv97, %wide.trip.count85
  br i1 %exitcond102.not, label %for.end101, label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond59
  %invariant.gep = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv97
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %for.body66
  %indvars.iv87 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next88, %for.body66 ]
  %min.2 = phi i32 [ 100000000, %for.cond63.preheader ], [ %spec.select64, %for.body66 ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %wide.trip.count
  br i1 %exitcond91.not, label %for.cond85.preheader, label %for.body66

for.cond85.preheader:                             ; preds = %for.cond63
  br label %for.cond85

for.body66:                                       ; preds = %for.cond63
  %gep = getelementptr inbounds nuw [105 x i32], ptr %invariant.gep, i64 %indvars.iv87
  %7 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %spec.select64 = call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond63, !llvm.loop !17

for.cond85:                                       ; preds = %for.cond85.preheader, %for.inc96
  %indvars.iv92 = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next93, %for.inc96 ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %wide.trip.count
  br i1 %exitcond96.not, label %for.inc99, label %for.inc96

for.inc96:                                        ; preds = %for.cond85
  %gep66 = getelementptr inbounds nuw [105 x i32], ptr %invariant.gep, i64 %indvars.iv92
  %8 = load i32, ptr %gep66, align 4, !tbaa !5, !invariant.load !13
  %sub95 = sub nsw i32 %8, %min.2
  store i32 %sub95, ptr %gep66, align 4, !tbaa !5
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond85, !llvm.loop !18

for.inc99:                                        ; preds = %for.cond85
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond59, !llvm.loop !19

for.end101:                                       ; preds = %for.cond59
  %9 = load i32, ptr %add.ptr105, align 8, !tbaa !5
  %wide.trip.count107 = zext nneg i32 %smax118 to i64
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc130, %for.end101
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc130 ], [ 0, %for.end101 ]
  %exitcond114.not = icmp eq i64 %indvars.iv109, %wide.trip.count85
  br i1 %exitcond114.not, label %for.cond133.preheader, label %for.cond110.preheader

for.cond133.preheader:                            ; preds = %for.cond106
  %wide.trip.count127 = zext nneg i32 %smax126 to i64
  br label %for.cond133

for.cond110.preheader:                            ; preds = %for.cond106
  %add.ptr116 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 %indvars.iv109
  br label %for.cond110

for.cond110:                                      ; preds = %for.cond110.preheader, %for.inc127
  %indvars.iv103 = phi i64 [ 2, %for.cond110.preheader ], [ %indvars.iv.next104, %for.inc127 ]
  %exitcond108.not = icmp eq i64 %indvars.iv103, %wide.trip.count107
  br i1 %exitcond108.not, label %for.inc130, label %for.inc127

for.inc127:                                       ; preds = %for.cond110
  %add.ptr119 = getelementptr inbounds nuw i32, ptr %add.ptr116, i64 %indvars.iv103
  %10 = load i32, ptr %add.ptr119, align 4, !tbaa !5, !invariant.load !13
  %add.ptr126 = getelementptr inbounds i8, ptr %add.ptr119, i64 -4
  store i32 %10, ptr %add.ptr126, align 4, !tbaa !5
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond110, !llvm.loop !20

for.inc130:                                       ; preds = %for.cond110
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond106, !llvm.loop !21

for.cond133:                                      ; preds = %for.cond133.preheader, %for.inc158
  %indvars.iv121 = phi i64 [ 0, %for.cond133.preheader ], [ %indvars.iv.next122, %for.inc158 ]
  %exitcond128.not = icmp eq i64 %indvars.iv121, %wide.trip.count127
  br i1 %exitcond128.not, label %for.inc161, label %for.cond138

for.cond138:                                      ; preds = %for.cond133, %for.inc155
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.inc155 ], [ 2, %for.cond133 ]
  %exitcond120.not = icmp eq i64 %indvars.iv115, %wide.trip.count107
  br i1 %exitcond120.not, label %for.inc158, label %for.inc155

for.inc155:                                       ; preds = %for.cond138
  %add.ptr144 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 %indvars.iv115
  %add.ptr147 = getelementptr inbounds nuw i32, ptr %add.ptr144, i64 %indvars.iv121
  %11 = load i32, ptr %add.ptr147, align 4, !tbaa !5, !invariant.load !13
  %add.ptr151 = getelementptr inbounds i8, ptr %add.ptr144, i64 -420
  %add.ptr154 = getelementptr inbounds nuw i32, ptr %add.ptr151, i64 %indvars.iv121
  store i32 %11, ptr %add.ptr154, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br label %for.cond138, !llvm.loop !22

for.inc158:                                       ; preds = %for.cond138
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond133, !llvm.loop !23

for.inc161:                                       ; preds = %for.cond133
  %add = add nsw i32 %9, %sum.0
  %inc162 = add nuw i32 %k.0, 1
  %indvars.iv.next76 = add i32 %indvars.iv75, -1
  %indvars.iv.next125 = add i32 %indvars.iv124, -1
  br label %for.cond15, !llvm.loop !24

for.inc166:                                       ; preds = %for.cond15
  %call164 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %vtable.i = load ptr, ptr %call164, align 8, !tbaa !25, !invariant.load !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %add.ptr.i = getelementptr inbounds i8, ptr %call164, i64 %vbase.offset.i
  %call.i3 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call164, i8 noundef signext %call.i3)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc167 = add nuw nsw i32 %z1.0, 1
  br label %for.cond, !llvm.loop !27

for.end168:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
!27 = distinct !{!27, !10, !11}
