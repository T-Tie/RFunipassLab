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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %b) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %a, align 16, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 50
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.cond.cleanup
  %i.1 = phi i32 [ %inc49, %for.cond.cleanup ], [ 0, %for.cond5.preheader ]
  %exitcond41.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond41.not, label %while.cond51, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %1 = load i32, ptr %a, align 16, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %cmp10 = icmp slt i32 %1, 5
  br i1 %cmp10, label %if.end17, label %if.then14

if.then14:                                        ; preds = %for.body7
  %rem = urem i32 %mul, 10
  %div = udiv i32 %mul, 10
  br label %if.end17

if.end17:                                         ; preds = %for.body7, %if.then14
  %rem.sink = phi i32 [ %rem, %if.then14 ], [ %mul, %for.body7 ]
  %yushu.0 = phi i32 [ %div, %if.then14 ], [ 0, %for.body7 ]
  store i32 %rem.sink, ptr %b, align 16, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end36, %if.end17
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %if.end36 ], [ 1, %if.end17 ]
  %yushu.1 = phi i32 [ %yushu.2, %if.end36 ], [ %yushu.0, %if.end17 ]
  %exitcond36.not = icmp eq i64 %indvars.iv33, 50
  br i1 %exitcond36.not, label %for.cond38, label %while.body

while.body:                                       ; preds = %while.cond
  %arrayidx21 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv33
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %mul22 = shl nsw i32 %2, 1
  %add23 = add nsw i32 %mul22, %yushu.1
  %cmp24 = icmp slt i32 %add23, 10
  br i1 %cmp24, label %if.end36, label %if.then30

if.then30:                                        ; preds = %while.body
  %rem31 = urem i32 %add23, 10
  %div34 = udiv i32 %add23, 10
  br label %if.end36

if.end36:                                         ; preds = %while.body, %if.then30
  %rem31.sink = phi i32 [ %rem31, %if.then30 ], [ %add23, %while.body ]
  %yushu.2 = phi i32 [ %div34, %if.then30 ], [ 0, %while.body ]
  %3 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv33
  store i32 %rem31.sink, ptr %3, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %while.cond, !llvm.loop !12

for.cond38:                                       ; preds = %while.cond, %for.body40
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body40 ], [ 0, %while.cond ]
  %exitcond40.not = icmp eq i64 %indvars.iv37, 50
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.body40

for.cond.cleanup:                                 ; preds = %for.cond38
  %inc49 = add nuw i32 %i.1, 1
  br label %for.cond5, !llvm.loop !13

for.body40:                                       ; preds = %for.cond38
  %arrayidx42 = getelementptr inbounds nuw [50 x i32], ptr %b, i64 0, i64 %indvars.iv37
  %4 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv37
  store i32 %4, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond38, !llvm.loop !14

while.cond51:                                     ; preds = %for.cond5, %while.cond51
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %while.cond51 ], [ 49, %for.cond5 ]
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1
  %arrayidx53 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv42
  %5 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %cmp54 = icmp eq i32 %5, 0
  br i1 %cmp54, label %while.cond51, label %for.cond58.preheader, !llvm.loop !15

for.cond58.preheader:                             ; preds = %while.cond51
  %6 = trunc nsw i64 %indvars.iv42 to i32
  br label %for.cond58

for.cond58:                                       ; preds = %for.cond58.preheader, %for.body60
  %i.3 = phi i32 [ %dec65, %for.body60 ], [ %6, %for.cond58.preheader ]
  %cmp59 = icmp sgt i32 %i.3, -1
  br i1 %cmp59, label %for.body60, label %for.end66

for.body60:                                       ; preds = %for.cond58
  %idxprom61 = zext nneg i32 %i.3 to i64
  %arrayidx62 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %idxprom61
  %7 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %dec65 = add nsw i32 %i.3, -1
  br label %for.cond58, !llvm.loop !16

for.end66:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
