; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef align 16 @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !12

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %1) #9
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc17 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc28, %for.inc27 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %n
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %1, %min.0
  br i1 %cmp10, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body5 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.end
  %j15.0 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ]
  %cmp17 = icmp slt i32 %j15.0, %n
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %idxprom22 = sext i32 %j15.0 to i64
  %arrayidx23 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom22
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %inc25 = add nsw i32 %j15.0, 1
  br label %for.cond16, !llvm.loop !15

for.inc27:                                        ; preds = %for.cond16
  %inc28 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc70, %for.end29
  %i30.0 = phi i32 [ 0, %for.end29 ], [ %inc71, %for.inc70 ]
  %cmp32 = icmp slt i32 %i30.0, %n
  br i1 %cmp32, label %for.body34, label %for.end72

for.body34:                                       ; preds = %for.cond31
  %idxprom36 = sext i32 %i30.0 to i64
  %arrayidx37 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom36
  %3 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc54, %for.body34
  %j38.0 = phi i32 [ 1, %for.body34 ], [ %inc55, %for.inc54 ]
  %min35.0 = phi i32 [ %3, %for.body34 ], [ %min35.1, %for.inc54 ]
  %cmp40 = icmp slt i32 %j38.0, %n
  br i1 %cmp40, label %for.body42, label %for.end56

for.body42:                                       ; preds = %for.cond39
  %idxprom43 = sext i32 %j38.0 to i64
  %arrayidx44 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom43
  %arrayidx46 = getelementptr inbounds [105 x i32], ptr %arrayidx44, i64 0, i64 %idxprom36
  %4 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %4, %min35.0
  br i1 %cmp47, label %if.then48, label %for.inc54

if.then48:                                        ; preds = %for.body42
  br label %for.inc54

for.inc54:                                        ; preds = %for.body42, %if.then48
  %min35.1 = phi i32 [ %4, %if.then48 ], [ %min35.0, %for.body42 ]
  %inc55 = add nsw i32 %j38.0, 1
  br label %for.cond39, !llvm.loop !17

for.end56:                                        ; preds = %for.cond39
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc67, %for.end56
  %j57.0 = phi i32 [ 0, %for.end56 ], [ %inc68, %for.inc67 ]
  %cmp59 = icmp slt i32 %j57.0, %n
  br i1 %cmp59, label %for.inc67, label %for.inc70

for.inc67:                                        ; preds = %for.cond58
  %idxprom62 = sext i32 %j57.0 to i64
  %arrayidx63 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom62
  %arrayidx65 = getelementptr inbounds [105 x i32], ptr %arrayidx63, i64 0, i64 %idxprom36
  %5 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %sub66 = sub nsw i32 %5, %min35.0
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  %inc68 = add nsw i32 %j57.0, 1
  br label %for.cond58, !llvm.loop !18

for.inc70:                                        ; preds = %for.cond58
  %inc71 = add nsw i32 %i30.0, 1
  br label %for.cond31, !llvm.loop !19

for.end72:                                        ; preds = %for.cond31
  %6 = load i32, ptr getelementptr inbounds ([105 x i32], ptr getelementptr inbounds ([105 x [105 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 8, !tbaa !5
  %cmp73 = icmp eq i32 %n, 2
  br i1 %cmp73, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end72
  call void @_Z8xiaojiani(i32 noundef %n) #10
  %sub75 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z7guilingi(i32 noundef %sub75) #11
  %add = add nsw i32 %6, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %if.else
  %retval.0 = phi i32 [ %add, %if.else ], [ %6, %for.end72 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %add, %for.inc25 ]
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom1
  store i32 %0, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx8 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom1
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %add18, %for.inc ]
  %cmp12 = icmp slt i32 %j.0, %sub
  br i1 %cmp12, label %for.inc, label %for.inc25

for.inc:                                          ; preds = %for.cond10
  %add18 = add nsw i32 %j.0, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [105 x i32], ptr %arrayidx5, i64 0, i64 %idxprom19
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [105 x i32], ptr %arrayidx8, i64 0, i64 %idxprom23
  store i32 %2, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !20

for.inc25:                                        ; preds = %for.cond10
  br label %for.cond, !llvm.loop !21

for.end27:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nofree nosync nounwind willreturn }
attributes #11 = { nofree nosync nounwind }

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
