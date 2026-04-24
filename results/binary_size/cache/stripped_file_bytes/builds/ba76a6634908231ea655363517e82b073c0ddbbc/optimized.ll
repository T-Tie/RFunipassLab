; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw23qdzlq.cpp"
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
  %a = alloca [200 x [200 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %a, i64 804
  %1 = sext i32 %0 to i64
  %smax129 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count70 = zext i32 %0 to i64
  br label %while.cond

while.cond:                                       ; preds = %for.end143, %entry
  %q.0 = phi i32 [ 0, %entry ], [ %inc146, %for.end143 ]
  %exitcond130.not = icmp eq i32 %q.0, %smax129
  br i1 %exitcond130.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.inc8
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc8 ], [ 0, %while.cond ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %wide.trip.count70
  br i1 %exitcond71.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count70
  br i1 %exitcond.not, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.end140, %for.end10
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.end140 ], [ %1, %for.end10 ]
  %indvars.iv115.in = phi i32 [ %indvars.iv115, %for.end140 ], [ %0, %for.end10 ]
  %m.0 = phi i32 [ %inc142, %for.end140 ], [ 1, %for.end10 ]
  %s.0 = phi i32 [ %add, %for.end140 ], [ 0, %for.end10 ]
  %indvars.iv115 = add i32 %indvars.iv115.in, -1
  %smax122 = call i32 @llvm.smax.i32(i32 %indvars.iv115, i32 1)
  %exitcond128.not = icmp eq i32 %m.0, %0
  br i1 %exitcond128.not, label %for.end143, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %2 = trunc nsw i64 %indvars.iv125 to i32
  %smax109 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count85 = zext nneg i32 %smax109 to i64
  %wide.trip.count75 = and i64 %indvars.iv125, 4294967295
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc50
  %indvars.iv82 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next83, %for.inc50 ]
  %exitcond86.not = icmp eq i64 %indvars.iv82, %wide.trip.count85
  br i1 %exitcond86.not, label %for.cond53.preheader, label %for.body16

for.cond53.preheader:                             ; preds = %for.cond14
  %wide.trip.count90 = and i64 %indvars.iv125, 4294967295
  br label %for.cond53

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv82
  %3 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body22 ], [ 0, %for.body16 ]
  %l.0 = phi i32 [ %spec.select, %for.body22 ], [ %3, %for.body16 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count75
  br i1 %exitcond76.not, label %for.cond35, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv72
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %l.0, i32 %4)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond20, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond20, %for.body37
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body37 ], [ 0, %for.cond20 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count75
  br i1 %exitcond81.not, label %for.inc50, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv77
  %5 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub42 = sub nsw i32 %5, %l.0
  store i32 %sub42, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond35, !llvm.loop !14

for.inc50:                                        ; preds = %for.cond35
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  br label %for.cond14, !llvm.loop !15

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc91
  %indvars.iv97 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next98, %for.inc91 ]
  %exitcond102.not = icmp eq i64 %indvars.iv97, %wide.trip.count85
  br i1 %exitcond102.not, label %for.end93, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx58 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv97
  %6 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.cond59

for.cond59:                                       ; preds = %for.body61, %for.body55
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body61 ], [ 0, %for.body55 ]
  %l.2 = phi i32 [ %spec.select63, %for.body61 ], [ %6, %for.body55 ]
  %exitcond91.not = icmp eq i64 %indvars.iv87, %wide.trip.count90
  br i1 %exitcond91.not, label %for.cond76, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx65 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv87, i64 %indvars.iv97
  %7 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %spec.select63 = call i32 @llvm.smin.i32(i32 %l.2, i32 %7)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond59, !llvm.loop !16

for.cond76:                                       ; preds = %for.cond59, %for.body78
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body78 ], [ 0, %for.cond59 ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %wide.trip.count90
  br i1 %exitcond96.not, label %for.inc91, label %for.body78

for.body78:                                       ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv92, i64 %indvars.iv97
  %8 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %8, %l.2
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond76, !llvm.loop !17

for.inc91:                                        ; preds = %for.cond76
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond53, !llvm.loop !18

for.end93:                                        ; preds = %for.cond53
  %9 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %indvars.iv.next126 = add nsw i64 %indvars.iv125, -1
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc115, %for.end93
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc115 ], [ 0, %for.end93 ]
  %exitcond111.not = icmp eq i64 %indvars.iv106, %wide.trip.count85
  br i1 %exitcond111.not, label %for.cond118.preheader, label %for.cond99

for.cond118.preheader:                            ; preds = %for.cond96
  %wide.trip.count123 = zext nneg i32 %smax122 to i64
  %wide.trip.count117 = zext i32 %indvars.iv115 to i64
  br label %for.cond118

for.cond99:                                       ; preds = %for.cond96, %for.body102
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body102 ], [ 1, %for.cond96 ]
  %cmp101 = icmp slt i64 %indvars.iv103, %indvars.iv.next126
  br i1 %cmp101, label %for.body102, label %for.inc115

for.body102:                                      ; preds = %for.cond99
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %arrayidx107 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv.next104
  %10 = load i32, ptr %arrayidx107, align 4, !tbaa !5
  %arrayidx111 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv103
  store i32 %10, ptr %arrayidx111, align 4, !tbaa !5
  br label %for.cond99, !llvm.loop !19

for.inc115:                                       ; preds = %for.cond99
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond96, !llvm.loop !20

for.cond118:                                      ; preds = %for.cond122, %for.cond118.preheader
  %indvars.iv119 = phi i64 [ 1, %for.cond118.preheader ], [ %indvars.iv.next120, %for.cond122 ]
  %exitcond124.not = icmp eq i64 %indvars.iv119, %wide.trip.count123
  br i1 %exitcond124.not, label %for.end140, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %for.cond118
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.body125
  %indvars.iv112 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next113, %for.body125 ]
  %exitcond118.not = icmp eq i64 %indvars.iv112, %wide.trip.count117
  br i1 %exitcond118.not, label %for.cond118, label %for.body125, !llvm.loop !21

for.body125:                                      ; preds = %for.cond122
  %arrayidx130 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv.next120, i64 %indvars.iv112
  %11 = load i32, ptr %arrayidx130, align 4, !tbaa !5
  %arrayidx134 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv112
  store i32 %11, ptr %arrayidx134, align 4, !tbaa !5
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  br label %for.cond122, !llvm.loop !22

for.end140:                                       ; preds = %for.cond118
  %add = add nsw i32 %9, %s.0
  %12 = trunc nsw i64 %indvars.iv.next126 to i32
  store i32 %12, ptr %n, align 4, !tbaa !5
  %inc142 = add nuw i32 %m.0, 1
  br label %for.cond11, !llvm.loop !23

for.end143:                                       ; preds = %for.cond11
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call144, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call144, i64 %vbase.offset.i
  %call.i64 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call144, i8 noundef signext %call.i64)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc146 = add nuw i32 %q.0, 1
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
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
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = distinct !{!26, !10, !11}
