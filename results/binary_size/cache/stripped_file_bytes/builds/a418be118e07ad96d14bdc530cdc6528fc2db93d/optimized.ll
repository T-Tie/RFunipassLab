; ModuleID = '<stdin>'
source_filename = "/tmp/tmpor6vgau_.cpp"
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
  %a = alloca [1000000 x i8], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 1000000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000000
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %indvars.iv
  store i8 48, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %0 = load i32, ptr %N, align 4, !tbaa !11
  %cmp2 = icmp eq i32 %0, 0
  br i1 %cmp2, label %if.then, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end
  %1 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 1)
  %smax = add nsw i32 %1, -1
  br label %for.cond4

if.then:                                          ; preds = %for.end
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef 1)
  br label %if.end67

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc49
  %i.1 = phi i32 [ %inc50, %for.inc49 ], [ 0, %for.cond4.preheader ]
  %exitcond30.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond30.not, label %for.cond52, label %for.cond7

for.cond7:                                        ; preds = %for.cond4, %for.inc16
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc16 ], [ 0, %for.cond4 ]
  %exitcond24.not = icmp eq i64 %indvars.iv21, 1000000
  br i1 %exitcond24.not, label %for.cond19, label %for.inc16

for.inc16:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %indvars.iv21
  %2 = load i8, ptr %arrayidx11, align 1, !tbaa !5, !invariant.load !13
  %sub12 = shl i8 %2, 1
  %mul = add i8 %sub12, -96
  store i8 %mul, ptr %arrayidx11, align 1, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond7, !llvm.loop !14

for.cond19:                                       ; preds = %for.cond7, %for.inc46
  %indvars.iv25 = phi i64 [ %4, %for.inc46 ], [ 0, %for.cond7 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, 1000000
  br i1 %exitcond29.not, label %for.inc49, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %indvars.iv25
  %3 = load i8, ptr %arrayidx23, align 1, !tbaa !5, !invariant.load !13
  %cmp25 = icmp sgt i8 %3, 9
  %4 = add nuw nsw i64 %indvars.iv25, 1
  br i1 %cmp25, label %if.then26, label %if.else38

if.then26:                                        ; preds = %for.body21
  %narrow = add nuw i8 %3, 38
  %arrayidx36 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx36, align 1, !tbaa !5, !invariant.load !13
  %inc37 = add i8 %5, 1
  store i8 %inc37, ptr %arrayidx36, align 1, !tbaa !5
  br label %for.inc46

if.else38:                                        ; preds = %for.body21
  %add42 = add nsw i8 %3, 48
  br label %for.inc46

for.inc46:                                        ; preds = %if.then26, %if.else38
  %add42.sink = phi i8 [ %narrow, %if.then26 ], [ %add42, %if.else38 ]
  store i8 %add42.sink, ptr %arrayidx23, align 1, !tbaa !5
  br label %for.cond19, !llvm.loop !15

for.inc49:                                        ; preds = %for.cond19
  %inc50 = add nuw nsw i32 %i.1, 1
  br label %for.cond4, !llvm.loop !16

for.cond52:                                       ; preds = %for.cond4, %for.inc65
  %i.2 = phi i32 [ %dec, %for.inc65 ], [ 999999, %for.cond4 ]
  %first.0 = phi i32 [ %first.1, %for.inc65 ], [ 0, %for.cond4 ]
  %cmp53 = icmp sgt i32 %i.2, -1
  br i1 %cmp53, label %for.body54, label %if.end67

for.body54:                                       ; preds = %for.cond52
  %idxprom55 = zext nneg i32 %i.2 to i64
  %arrayidx56 = getelementptr inbounds nuw [1000000 x i8], ptr %a, i64 0, i64 %idxprom55
  %6 = load i8, ptr %arrayidx56, align 1, !tbaa !5, !invariant.load !13
  %cmp58 = icmp ne i8 %6, 48
  %cmp59 = icmp ne i32 %first.0, 0
  %or.cond = or i1 %cmp59, %cmp58
  br i1 %or.cond, label %if.then60, label %for.inc65

if.then60:                                        ; preds = %for.body54
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %6)
  br label %for.inc65

for.inc65:                                        ; preds = %for.body54, %if.then60
  %first.1 = phi i32 [ 1, %if.then60 ], [ 0, %for.body54 ]
  %dec = add nsw i32 %i.2, -1
  br label %for.cond52, !llvm.loop !17

if.end67:                                         ; preds = %for.cond52, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  call void @llvm.lifetime.end.p0(i64 noundef 1000000, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !6, i64 0}
!13 = !{}
!14 = distinct !{!14, !9, !10}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
