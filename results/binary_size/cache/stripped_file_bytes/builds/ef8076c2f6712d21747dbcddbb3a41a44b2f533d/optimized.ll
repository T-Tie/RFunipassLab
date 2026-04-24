; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_aovzizq.cpp"
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
  %an = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end44

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %an) #4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %an, i8 0, i64 400, i1 false)
  store i32 2, ptr %an, align 16, !tbaa !5
  %cmp216 = icmp sgt i32 %0, 1
  br i1 %cmp216, label %vector.ph, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.cond.cleanup12, %if.else
  br label %while.cond

vector.ph:                                        ; preds = %if.else, %for.cond.cleanup12
  %i.017 = phi i32 [ %inc29, %for.cond.cleanup12 ], [ 1, %if.else ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %2, ptr %1, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, 88
  br i1 %3, label %for.body6, label %vector.body, !llvm.loop !9

for.body6:                                        ; preds = %vector.body, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 88, %vector.body ]
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  store i32 %mul, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 90
  br i1 %exitcond.not, label %for.body13, label %for.body6, !llvm.loop !14

for.cond.cleanup12:                               ; preds = %for.inc25
  %inc29 = add nuw nsw i32 %i.017, 1
  %exitcond26.not = icmp eq i32 %inc29, %0
  br i1 %exitcond26.not, label %while.cond.preheader, label %vector.ph, !llvm.loop !15

for.body13:                                       ; preds = %for.body6, %for.inc25
  %indvars.iv21 = phi i64 [ %indvars.iv.next22.pre-phi, %for.inc25 ], [ 0, %for.body6 ]
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %5, 9
  br i1 %cmp16, label %if.then17, label %for.body13.for.inc25_crit_edge

for.body13.for.inc25_crit_edge:                   ; preds = %for.body13
  %.pre = add nuw nsw i64 %indvars.iv21, 1
  br label %for.inc25

if.then17:                                        ; preds = %for.body13
  %sub = add nsw i32 %5, -10
  store i32 %sub, ptr %arrayidx15, align 4, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv21, 1
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %7, 1
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body13.for.inc25_crit_edge, %if.then17
  %indvars.iv.next22.pre-phi = phi i64 [ %.pre, %for.body13.for.inc25_crit_edge ], [ %6, %if.then17 ]
  %exitcond25.not = icmp eq i64 %indvars.iv.next22.pre-phi, 90
  br i1 %exitcond25.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !16

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv30 = phi i32 [ %indvars.iv.next31, %while.cond ], [ 90, %while.cond.preheader ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %while.cond ], [ 90, %while.cond.preheader ]
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %indvars.iv27
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %8, 0
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, -1
  %indvars.iv.next31 = add i32 %indvars.iv30, -1
  br i1 %cmp33, label %while.cond, label %for.cond34.preheader, !llvm.loop !17

for.cond34.preheader:                             ; preds = %while.cond
  %cmp3518 = icmp sgt i64 %indvars.iv27, -1
  br i1 %cmp3518, label %for.body37.preheader, label %for.cond.cleanup36

for.body37.preheader:                             ; preds = %for.cond34.preheader
  %9 = zext i32 %indvars.iv30 to i64
  br label %for.body37

for.cond.cleanup36:                               ; preds = %for.body37, %for.cond34.preheader
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %an) #4
  br label %if.end44

for.body37:                                       ; preds = %for.body37.preheader, %for.body37
  %indvars.iv32 = phi i64 [ %9, %for.body37.preheader ], [ %indvars.iv.next33, %for.body37 ]
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv32
  %10 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1
  %cmp35.not = icmp eq i64 %indvars.iv32, 0
  br i1 %cmp35.not, label %for.cond.cleanup36, label %for.body37, !llvm.loop !18

if.end44:                                         ; preds = %for.cond.cleanup36, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
