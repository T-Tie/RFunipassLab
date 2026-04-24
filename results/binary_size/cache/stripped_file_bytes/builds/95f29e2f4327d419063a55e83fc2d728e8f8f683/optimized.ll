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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc154, %entry
  %k.0 = phi i32 [ 1, %entry ], [ %inc155, %for.inc154 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %k.0, %0
  br i1 %cmp.not, label %for.end156, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv72, %2
  br i1 %cmp2, label %for.cond4, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond1
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %while.cond

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond1, !llvm.loop !12

while.cond.loopexit:                              ; preds = %for.cond123
  %add = add nsw i32 %15, %sum.0
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  br label %while.cond, !llvm.loop !13

while.cond:                                       ; preds = %while.cond.preheader, %while.cond.loopexit
  %indvars.iv133 = phi i64 [ %5, %while.cond.preheader ], [ %indvars.iv.next134, %while.cond.loopexit ]
  %indvars.iv126 = phi i64 [ %4, %while.cond.preheader ], [ %indvars.iv.next127, %while.cond.loopexit ]
  %sum.0 = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.loopexit ]
  %8 = trunc nuw i64 %indvars.iv133 to i32
  %cmp13 = icmp sgt i32 %8, 1
  br i1 %cmp13, label %for.cond14, label %while.end

for.cond14:                                       ; preds = %while.cond, %for.inc49
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.inc49 ], [ 0, %while.cond ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv133
  br i1 %exitcond87.not, label %for.cond52, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83
  %9 = load i32, ptr %arrayidx18, align 16, !tbaa !5, !invariant.load !14
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body22 ], [ 0, %for.body16 ]
  %min.0 = phi i32 [ %spec.select, %for.body22 ], [ %9, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv75, %indvars.iv133
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond20
  br label %for.cond35

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv75
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !14
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %min.0)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond20, !llvm.loop !15

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc46
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc46 ], [ 0, %for.cond35.preheader ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv133
  br i1 %exitcond82.not, label %for.inc49, label %for.inc46

for.inc46:                                        ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv78
  %11 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !14
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond35, !llvm.loop !16

for.inc49:                                        ; preds = %for.cond35
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond14, !llvm.loop !17

for.cond52:                                       ; preds = %for.cond14, %for.inc90
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc90 ], [ 0, %for.cond14 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv133
  br i1 %exitcond102.not, label %for.end92, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv98
  %12 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !14
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body54
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body60 ], [ 0, %for.body54 ]
  %min.2 = phi i32 [ %spec.select70, %for.body60 ], [ %12, %for.body54 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv133
  br i1 %exitcond92.not, label %for.cond75.preheader, label %for.body60

for.cond75.preheader:                             ; preds = %for.cond58
  br label %for.cond75

for.body60:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv88, i64 %indvars.iv98
  %13 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !14
  %spec.select70 = call i32 @llvm.smin.i32(i32 %13, i32 %min.2)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond58, !llvm.loop !18

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc87
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc87 ], [ 0, %for.cond75.preheader ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv133
  br i1 %exitcond97.not, label %for.inc90, label %for.inc87

for.inc87:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv98
  %14 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !14
  %sub82 = sub nsw i32 %14, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond75, !llvm.loop !19

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond52, !llvm.loop !20

for.end92:                                        ; preds = %for.cond52
  %15 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc106, %for.end92
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc106 ], [ 1, %for.end92 ]
  %exitcond110.not = icmp eq i64 %indvars.iv103, %indvars.iv126
  br i1 %exitcond110.not, label %for.cond109, label %for.inc106

for.inc106:                                       ; preds = %for.cond95
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next104
  %16 = load i32, ptr %arrayidx101, align 16, !tbaa !5, !invariant.load !14
  %arrayidx104 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv103
  store i32 %16, ptr %arrayidx104, align 16, !tbaa !5
  br label %for.cond95, !llvm.loop !21

for.cond109:                                      ; preds = %for.cond95, %for.inc120
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc120 ], [ 1, %for.cond95 ]
  %exitcond115.not = icmp eq i64 %indvars.iv111, %indvars.iv126
  br i1 %exitcond115.not, label %for.cond123, label %for.inc120

for.inc120:                                       ; preds = %for.cond109
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %arrayidx116 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next112
  %17 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !14
  %arrayidx119 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv111
  store i32 %17, ptr %arrayidx119, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !22

for.cond123:                                      ; preds = %for.cond127, %for.cond109
  %indvars.iv121 = phi i64 [ 1, %for.cond109 ], [ %indvars.iv.next122, %for.cond127 ]
  %exitcond125.not = icmp eq i64 %indvars.iv121, %indvars.iv126
  br i1 %exitcond125.not, label %while.cond.loopexit, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.cond123
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  br label %for.cond127

for.cond127:                                      ; preds = %for.cond127.preheader, %for.inc141
  %indvars.iv116 = phi i64 [ 1, %for.cond127.preheader ], [ %indvars.iv.next117, %for.inc141 ]
  %exitcond120.not = icmp eq i64 %indvars.iv116, %indvars.iv126
  br i1 %exitcond120.not, label %for.cond123, label %for.inc141, !llvm.loop !23

for.inc141:                                       ; preds = %for.cond127
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %arrayidx136 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next122, i64 %indvars.iv.next117
  %18 = load i32, ptr %arrayidx136, align 4, !tbaa !5, !invariant.load !14
  %arrayidx140 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv121, i64 %indvars.iv116
  store i32 %18, ptr %arrayidx140, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %cmp148 = icmp eq i32 %k.0, 1
  br i1 %cmp148, label %for.inc154, label %if.else

if.else:                                          ; preds = %while.end
  %call151 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc154

for.inc154:                                       ; preds = %while.end, %if.else
  %_ZSt4cout.sink = phi ptr [ %call151, %if.else ], [ @_ZSt4cout, %while.end ]
  %call150 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, i32 noundef %sum.0)
  %inc155 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

for.end156:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
!14 = !{}
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
!25 = distinct !{!25, !10, !11}
