; ModuleID = '<stdin>'
source_filename = "/tmp/tmped94kt7y.cpp"
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
  %a = alloca [50 x i32], align 16
  %b = alloca [50 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 200, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 200, ptr noundef nonnull align 16 %b) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 50
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.inc

for.cond5.preheader:                              ; preds = %for.cond
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond5

for.inc:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc48
  %i.0 = phi i32 [ %inc49, %for.inc48 ], [ 0, %for.cond5.preheader ]
  %exitcond18.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond18.not, label %while.cond51, label %if.end17

if.end17:                                         ; preds = %for.cond5
  store i32 2, ptr %b, align 16, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end17
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %if.end36 ], [ 0, %if.end17 ]
  %yushu.1 = phi i32 [ %yushu.2, %if.end36 ], [ 0, %if.end17 ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond13.not = icmp eq i64 %indvars.iv10, 49
  br i1 %exitcond13.not, label %for.cond38, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx21 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv.next11
  %1 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !12
  %mul22 = shl nsw i32 %1, 1
  %add23 = add nsw i32 %mul22, %yushu.1
  %cmp24 = icmp slt i32 %add23, 10
  br i1 %cmp24, label %if.end36, label %if.then30

if.then30:                                        ; preds = %while.body
  %rem317 = urem i32 %add23, 10
  %div348 = udiv i32 %add23, 10
  br label %if.end36

if.end36:                                         ; preds = %while.body, %if.then30
  %rem317.sink = phi i32 [ %rem317, %if.then30 ], [ %add23, %while.body ]
  %yushu.2 = phi i32 [ %div348, %if.then30 ], [ 0, %while.body ]
  %2 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv.next11
  store i32 %rem317.sink, ptr %2, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !13

for.cond38:                                       ; preds = %while.cond, %for.inc45
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc45 ], [ 0, %while.cond ]
  %exitcond17.not = icmp eq i64 %indvars.iv14, 50
  br i1 %exitcond17.not, label %for.inc48, label %for.inc45

for.inc45:                                        ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv14
  %3 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv14
  store i32 %3, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond38, !llvm.loop !14

for.inc48:                                        ; preds = %for.cond38
  %inc49 = add nuw i32 %i.0, 1
  br label %for.cond5, !llvm.loop !15

while.cond51:                                     ; preds = %for.cond5, %while.cond51
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %while.cond51 ], [ 49, %for.cond5 ]
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1
  %arrayidx53 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %4 = load i32, ptr %arrayidx53, align 4, !tbaa !5, !invariant.load !12
  %cmp54 = icmp eq i32 %4, 0
  br i1 %cmp54, label %while.cond51, label %for.cond58.preheader, !llvm.loop !16

for.cond58.preheader:                             ; preds = %while.cond51
  %5 = trunc nsw i64 %indvars.iv.next20 to i32
  br label %for.cond58

for.cond58:                                       ; preds = %for.cond58.preheader, %for.inc64
  %i.2 = phi i32 [ %inc57, %for.inc64 ], [ %5, %for.cond58.preheader ]
  %.sink1 = phi i32 [ -1, %for.inc64 ], [ 1, %for.cond58.preheader ]
  %inc57 = add nsw i32 %.sink1, %i.2
  %cmp59 = icmp sgt i32 %inc57, -1
  br i1 %cmp59, label %for.inc64, label %for.end66

for.inc64:                                        ; preds = %for.cond58
  %idxprom61 = zext nneg i32 %inc57 to i64
  %arrayidx62 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %idxprom61
  %6 = load i32, ptr %arrayidx62, align 4, !tbaa !5, !invariant.load !12
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  br label %for.cond58, !llvm.loop !17

for.end66:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 noundef 200, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 200, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
