; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj6_f_8xd.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %vla, align 16, !tbaa !5
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %5)
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 noundef 1)
  %wide.trip.count19 = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc23, %for.end
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc23 ], [ 1, %for.end ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond27, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond5
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv16
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc20
  %indvars.iv13 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next14, %for.inc20 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %indvars.iv16
  br i1 %exitcond.not, label %for.inc23, label %for.body12

for.body12:                                       ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv13
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !12
  %cmp17 = icmp eq i32 %7, %8
  br i1 %cmp17, label %if.then, label %for.inc20

if.then:                                          ; preds = %for.body12
  store i32 1, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc20

for.inc20:                                        ; preds = %for.body12, %if.then
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond9, !llvm.loop !13

for.inc23:                                        ; preds = %for.cond9
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond5, !llvm.loop !14

for.cond27:                                       ; preds = %for.cond5, %for.inc40
  %.pre24 = phi i32 [ %.pre, %for.inc40 ], [ %6, %for.cond5 ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc40 ], [ 1, %for.cond5 ]
  %9 = sext i32 %.pre24 to i64
  %cmp28 = icmp slt i64 %indvars.iv21, %9
  br i1 %cmp28, label %for.body30, label %for.end42

for.body30:                                       ; preds = %for.cond27
  %arrayidx32 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv21
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !12
  %cmp33 = icmp sgt i32 %10, 1
  br i1 %cmp33, label %if.then34, label %for.inc40

if.then34:                                        ; preds = %for.body30
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %for.body30, %if.then34
  %.pre = phi i32 [ %.pre24, %for.body30 ], [ %.pre.pre, %if.then34 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond27, !llvm.loop !15

for.end42:                                        ; preds = %for.cond27
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
