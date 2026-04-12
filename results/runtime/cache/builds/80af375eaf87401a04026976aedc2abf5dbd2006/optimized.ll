; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9hqh8wxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z7smallerii(i32 noundef %a, i32 noundef %b) local_unnamed_addr #0 {
entry:
  %cmp = icmp sge i32 %a, %b
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi i32 [ %a, %if.else ], [ %b, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3Sumi(i32 noundef %n) local_unnamed_addr #1 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc23, %for.inc22 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body ], [ %call, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %n
  br i1 %cmp3, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond2
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom8
  %1 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %call = call noundef i32 @_Z7smallerii(i32 noundef %min.0, i32 noundef %1) #7
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end
  %j10.0 = phi i32 [ 0, %for.end ], [ %inc20, %for.inc19 ]
  %cmp12 = icmp slt i32 %j10.0, %n
  br i1 %cmp12, label %for.inc19, label %for.inc22

for.inc19:                                        ; preds = %for.cond11
  %idxprom17 = sext i32 %j10.0 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom17
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx18, align 4, !tbaa !5
  %inc20 = add nsw i32 %j10.0, 1
  br label %for.cond11, !llvm.loop !12

for.inc22:                                        ; preds = %for.cond11
  %inc23 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end24:                                        ; preds = %for.cond
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc59, %for.end24
  %j25.0 = phi i32 [ 0, %for.end24 ], [ %inc60, %for.inc59 ]
  %cmp27 = icmp slt i32 %j25.0, %n
  br i1 %cmp27, label %for.body29, label %for.end61

for.body29:                                       ; preds = %for.cond26
  %idxprom31 = sext i32 %j25.0 to i64
  %arrayidx32 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom31
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.body29
  %i33.0 = phi i32 [ 0, %for.body29 ], [ %inc44, %for.inc43 ]
  %min30.0 = phi i32 [ %3, %for.body29 ], [ %call42, %for.inc43 ]
  %cmp35 = icmp slt i32 %i33.0, %n
  br i1 %cmp35, label %for.inc43, label %for.end45

for.inc43:                                        ; preds = %for.cond34
  %idxprom38 = sext i32 %i33.0 to i64
  %arrayidx39 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom38
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %arrayidx39, i64 0, i64 %idxprom31
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %call42 = call noundef i32 @_Z7smallerii(i32 noundef %min30.0, i32 noundef %4) #7
  %inc44 = add nsw i32 %i33.0, 1
  br label %for.cond34, !llvm.loop !14

for.end45:                                        ; preds = %for.cond34
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc56, %for.end45
  %i46.0 = phi i32 [ 0, %for.end45 ], [ %inc57, %for.inc56 ]
  %cmp48 = icmp slt i32 %i46.0, %n
  br i1 %cmp48, label %for.inc56, label %for.inc59

for.inc56:                                        ; preds = %for.cond47
  %idxprom51 = sext i32 %i46.0 to i64
  %arrayidx52 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom51
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom31
  %5 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %5, %min30.0
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %inc57 = add nsw i32 %i46.0, 1
  br label %for.cond47, !llvm.loop !15

for.inc59:                                        ; preds = %for.cond47
  %inc60 = add nsw i32 %j25.0, 1
  br label %for.cond26, !llvm.loop !16

for.end61:                                        ; preds = %for.cond26
  %cmp62 = icmp eq i32 %n, 2
  %6 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  br i1 %cmp62, label %return, label %if.end

if.end:                                           ; preds = %for.end61
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc99, %if.end
  %i63.0 = phi i32 [ 1, %if.end ], [ %add, %for.inc99 ]
  %sub65 = sub nsw i32 %n, 1
  %cmp66 = icmp slt i32 %i63.0, %sub65
  br i1 %cmp66, label %for.body68, label %for.end101

for.body68:                                       ; preds = %for.cond64
  %add = add nsw i32 %i63.0, 1
  %idxprom69 = sext i32 %add to i64
  %arrayidx70 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom69
  %7 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %idxprom71 = sext i32 %i63.0 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom71
  store i32 %7, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx75 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom69
  %8 = load i32, ptr %arrayidx75, align 16, !tbaa !5
  %arrayidx78 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom71
  store i32 %8, ptr %arrayidx78, align 16, !tbaa !5
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc96, %for.body68
  %j80.0 = phi i32 [ 1, %for.body68 ], [ %add89, %for.inc96 ]
  %cmp83 = icmp slt i32 %j80.0, %sub65
  br i1 %cmp83, label %for.inc96, label %for.inc99

for.inc96:                                        ; preds = %for.cond81
  %add89 = add nsw i32 %j80.0, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [100 x i32], ptr %arrayidx75, i64 0, i64 %idxprom90
  %9 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %idxprom94 = sext i32 %j80.0 to i64
  %arrayidx95 = getelementptr inbounds [100 x i32], ptr %arrayidx78, i64 0, i64 %idxprom94
  store i32 %9, ptr %arrayidx95, align 4, !tbaa !5
  br label %for.cond81, !llvm.loop !17

for.inc99:                                        ; preds = %for.cond81
  br label %for.cond64, !llvm.loop !18

for.end101:                                       ; preds = %for.cond64
  %call103 = call noundef i32 @_Z3Sumi(i32 noundef %sub65) #8
  %add104 = add nsw i32 %6, %call103
  br label %return

return:                                           ; preds = %for.end61, %for.end101
  %retval.0 = phi i32 [ %add104, %for.end101 ], [ %6, %for.end61 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body4, label %for.inc18

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %k.0, %2
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %k.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond5, !llvm.loop !19

for.inc12:                                        ; preds = %for.cond5
  %inc13 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !20

for.inc18:                                        ; preds = %for.cond1
  %call15 = call noundef i32 @_Z3Sumi(i32 noundef %1) #10
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call16, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc19 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !21

for.end20:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #10
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync willreturn }
attributes #8 = { nofree nosync nounwind }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind }

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
