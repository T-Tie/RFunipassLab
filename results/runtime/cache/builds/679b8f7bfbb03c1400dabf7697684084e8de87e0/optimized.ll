; ModuleID = '<stdin>'
source_filename = "/tmp/tmpve487bmo.cpp"
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
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.end ], [ 0, %entry ]
  %counter.0 = phi i32 [ %spec.select, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv6, %1
  br i1 %cmp, label %for.body, label %for.cond17

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv6
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv6
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %2, %3
  br i1 %cmp9, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.body4, %for.cond2
  %j.0.lcssa.in = phi i64 [ %indvars.iv, %for.body4 ], [ %indvars.iv6, %for.cond2 ]
  %4 = and i64 %j.0.lcssa.in, 4294967295
  %cmp10 = icmp eq i64 %indvars.iv6, %4
  %inc12 = zext i1 %cmp10 to i32
  %spec.select = add nuw nsw i32 %counter.0, %inc12
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond, !llvm.loop !12

for.cond17:                                       ; preds = %for.cond, %for.inc43
  %5 = phi i32 [ %.pre, %for.inc43 ], [ %0, %for.cond ]
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc43 ], [ 0, %for.cond ]
  %counter.2 = phi i32 [ %counter.3, %for.inc43 ], [ %counter.0, %for.cond ]
  %6 = sext i32 %5 to i64
  %cmp18 = icmp slt i64 %indvars.iv13, %6
  br i1 %cmp18, label %for.cond20.preheader, label %for.end45

for.cond20.preheader:                             ; preds = %for.cond17
  %arrayidx24 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv13
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.inc30
  %indvars.iv9 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next10, %for.inc30 ]
  %exitcond12.not = icmp eq i64 %indvars.iv9, %indvars.iv13
  br i1 %exitcond12.not, label %for.end32, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv9
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %7, %8
  br i1 %cmp27, label %for.end32, label %for.inc30

for.inc30:                                        ; preds = %for.body22
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond20, !llvm.loop !13

for.end32:                                        ; preds = %for.body22, %for.cond20
  %j.1.lcssa.in = phi i64 [ %indvars.iv9, %for.body22 ], [ %indvars.iv13, %for.cond20 ]
  %9 = and i64 %j.1.lcssa.in, 4294967295
  %cmp33 = icmp eq i64 %indvars.iv13, %9
  br i1 %cmp33, label %if.then34, label %for.inc43

if.then34:                                        ; preds = %for.end32
  %10 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %dec = add nsw i32 %counter.2, -1
  %cmp38.not = icmp eq i32 %dec, 0
  br i1 %cmp38.not, label %for.inc43, label %if.then39

if.then39:                                        ; preds = %if.then34
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc43

for.inc43:                                        ; preds = %for.end32, %if.then39, %if.then34
  %counter.3 = phi i32 [ %counter.2, %for.end32 ], [ %dec, %if.then39 ], [ 0, %if.then34 ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !14

for.end45:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
