; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkxspa_zo.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc154, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc155, %for.inc154 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end156, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %5, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv74, %2
  br i1 %cmp2, label %for.cond4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  br label %while.cond

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %5 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %6 = sext i32 %5 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %6
  br i1 %cmp5, label %for.body6, label %for.inc10

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv74, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond1, !llvm.loop !12

while.cond.loopexit:                              ; preds = %for.cond123
  %add = add nsw i32 %13, %sum.0
  %sub96 = add nsw i32 %nn.0, -1
  %indvars.iv.next129 = add nsw i64 %indvars.iv128, -1
  br label %while.cond, !llvm.loop !13

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %indvars.iv128 = phi i64 [ %4, %while.cond.preheader ], [ %indvars.iv.next129, %while.cond.loopexit ]
  %nn.0 = phi i32 [ %1, %while.cond.preheader ], [ %sub96, %while.cond.loopexit ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.loopexit ]
  %cmp13 = icmp sgt i32 %nn.0, 1
  br i1 %cmp13, label %for.cond14.preheader, label %while.end

for.cond14.preheader:                             ; preds = %while.cond
  %wide.trip.count88 = zext nneg i32 %nn.0 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc49
  %indvars.iv85 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next86, %for.inc49 ]
  %exitcond89.not = icmp eq i64 %indvars.iv85, %wide.trip.count88
  br i1 %exitcond89.not, label %for.cond52, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85
  %7 = load i32, ptr %arrayidx18, align 16, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body22 ], [ 0, %for.body16 ]
  %min.0 = phi i32 [ %spec.select, %for.body22 ], [ %7, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv77, %wide.trip.count88
  br i1 %exitcond.not, label %for.cond35, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv77
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %8, i32 %min.0)
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond20, !llvm.loop !14

for.cond35:                                       ; preds = %for.cond20, %for.body37
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body37 ], [ 0, %for.cond20 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count88
  br i1 %exitcond84.not, label %for.inc49, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv80
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond35, !llvm.loop !15

for.inc49:                                        ; preds = %for.cond35
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond14, !llvm.loop !16

for.cond52:                                       ; preds = %for.cond14, %for.inc90
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc90 ], [ 0, %for.cond14 ]
  %exitcond104.not = icmp eq i64 %indvars.iv100, %wide.trip.count88
  br i1 %exitcond104.not, label %for.end92, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %10 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body54
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body60 ], [ 0, %for.body54 ]
  %min.2 = phi i32 [ %spec.select71, %for.body60 ], [ %10, %for.body54 ]
  %exitcond94.not = icmp eq i64 %indvars.iv90, %wide.trip.count88
  br i1 %exitcond94.not, label %for.cond75, label %for.body60

for.body60:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv100
  %11 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select71 = call i32 @llvm.smin.i32(i32 %11, i32 %min.2)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond58, !llvm.loop !17

for.cond75:                                       ; preds = %for.cond58, %for.body77
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body77 ], [ 0, %for.cond58 ]
  %exitcond99.not = icmp eq i64 %indvars.iv95, %wide.trip.count88
  br i1 %exitcond99.not, label %for.inc90, label %for.body77

for.body77:                                       ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv95, i64 %indvars.iv100
  %12 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %12, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond75, !llvm.loop !18

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br label %for.cond52, !llvm.loop !19

for.end92:                                        ; preds = %for.cond52
  %13 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.body98, %for.end92
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body98 ], [ 1, %for.end92 ]
  %exitcond112.not = icmp eq i64 %indvars.iv105, %indvars.iv128
  br i1 %exitcond112.not, label %for.cond109, label %for.body98

for.body98:                                       ; preds = %for.cond95
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next106
  %14 = load i32, ptr %arrayidx101, align 16, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv105
  store i32 %14, ptr %arrayidx104, align 16, !tbaa !5
  br label %for.cond95, !llvm.loop !20

for.cond109:                                      ; preds = %for.cond95, %for.body112
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.body112 ], [ 1, %for.cond95 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %indvars.iv128
  br i1 %exitcond117.not, label %for.cond123, label %for.body112

for.body112:                                      ; preds = %for.cond109
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %arrayidx116 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next114
  %15 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %arrayidx119 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv113
  store i32 %15, ptr %arrayidx119, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !21

for.cond123:                                      ; preds = %for.cond127, %for.cond109
  %indvars.iv123 = phi i64 [ 1, %for.cond109 ], [ %indvars.iv.next124, %for.cond127 ]
  %exitcond127.not = icmp eq i64 %indvars.iv123, %indvars.iv128
  br i1 %exitcond127.not, label %while.cond.loopexit, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.cond123
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond127

for.cond127:                                      ; preds = %for.cond127.preheader, %for.body130
  %indvars.iv118 = phi i64 [ 1, %for.cond127.preheader ], [ %indvars.iv.next119, %for.body130 ]
  %exitcond122.not = icmp eq i64 %indvars.iv118, %indvars.iv128
  br i1 %exitcond122.not, label %for.cond123, label %for.body130, !llvm.loop !22

for.body130:                                      ; preds = %for.cond127
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %arrayidx136 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next124, i64 %indvars.iv.next119
  %16 = load i32, ptr %arrayidx136, align 4, !tbaa !5
  %arrayidx140 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv123, i64 %indvars.iv118
  store i32 %16, ptr %arrayidx140, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  %cmp148 = icmp eq i32 %k.0, 1
  br i1 %cmp148, label %for.inc154, label %if.else

if.else:                                          ; preds = %while.end
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i72 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i72)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc154

for.inc154:                                       ; preds = %while.end, %if.else
  %_ZSt4cout.sink = phi ptr [ %call.i.i, %if.else ], [ @_ZSt4cout, %while.end ]
  %call150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, i32 noundef %sum.0)
  %inc155 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !26

for.end156:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
