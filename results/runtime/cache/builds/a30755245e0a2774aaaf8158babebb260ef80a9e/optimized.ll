; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3gyinfn3.cpp"
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
  %x = alloca [100 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %x) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x float], ptr %x, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %1 = load float, ptr %x, align 16, !tbaa !12
  %conv = fptosi float %1 to i32
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc24, %for.end
  %max1.0 = phi i32 [ %conv, %for.end ], [ %max1.1, %for.inc24 ]
  %k.0 = phi i32 [ undef, %for.end ], [ %k.1, %for.inc24 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ]
  %max2.0 = phi i32 [ %conv, %for.end ], [ %max2.1, %for.inc24 ]
  %cmp6 = icmp sle i32 %i.1, %0
  br i1 %cmp6, label %for.body7, label %for.end26

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %i.1 to i64
  %arrayidx9 = getelementptr inbounds [100 x float], ptr %x, i64 0, i64 %idxprom8
  %2 = load float, ptr %arrayidx9, align 4, !tbaa !12
  %conv10 = sitofp i32 %max1.0 to float
  %cmp11 = fcmp ogt float %2, %conv10
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body7
  %conv14 = fptosi float %2 to i32
  br label %for.inc24

if.else:                                          ; preds = %for.body7
  %conv17 = sitofp i32 %max2.0 to float
  %cmp18 = fcmp olt float %2, %conv17
  br i1 %cmp18, label %if.then19, label %for.inc24

if.then19:                                        ; preds = %if.else
  %conv22 = fptosi float %2 to i32
  br label %for.inc24

for.inc24:                                        ; preds = %if.then, %if.then19, %if.else
  %max1.1 = phi i32 [ %conv14, %if.then ], [ %max1.0, %if.then19 ], [ %max1.0, %if.else ]
  %k.1 = phi i32 [ %i.1, %if.then ], [ %k.0, %if.then19 ], [ %k.0, %if.else ]
  %max2.1 = phi i32 [ %max2.0, %if.then ], [ %conv22, %if.then19 ], [ %max2.0, %if.else ]
  %inc25 = add nsw i32 %i.1, 1
  br label %for.cond5, !llvm.loop !14

for.end26:                                        ; preds = %for.cond5
  %cmp27 = icmp ne i32 %k.0, 0
  br i1 %cmp27, label %if.then28, label %if.end44

if.then28:                                        ; preds = %for.end26
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc41, %if.then28
  %i.2 = phi i32 [ 0, %if.then28 ], [ %inc42, %for.inc41 ]
  %max2.4 = phi i32 [ %max2.0, %if.then28 ], [ %max2.5, %for.inc41 ]
  %cmp30 = icmp slt i32 %i.2, %k.0
  br i1 %cmp30, label %for.body31, label %if.end44

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %i.2 to i64
  %arrayidx33 = getelementptr inbounds [100 x float], ptr %x, i64 0, i64 %idxprom32
  %3 = load float, ptr %arrayidx33, align 4, !tbaa !12
  %conv34 = sitofp i32 %max2.4 to float
  %cmp35 = fcmp ogt float %3, %conv34
  br i1 %cmp35, label %if.then36, label %for.inc41

if.then36:                                        ; preds = %for.body31
  %conv39 = fptosi float %3 to i32
  br label %for.inc41

for.inc41:                                        ; preds = %for.body31, %if.then36
  %max2.5 = phi i32 [ %conv39, %if.then36 ], [ %max2.4, %for.body31 ]
  %inc42 = add nsw i32 %i.2, 1
  br label %for.cond29, !llvm.loop !15

if.end44:                                         ; preds = %for.cond29, %for.end26
  %max2.3 = phi i32 [ %max2.0, %for.end26 ], [ %max2.4, %for.cond29 ]
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc57, %if.end44
  %max2.6 = phi i32 [ %max2.3, %if.end44 ], [ %max2.7, %for.inc57 ]
  %.sink = phi i32 [ %k.0, %if.end44 ], [ %add, %for.inc57 ]
  %add = add nsw i32 %.sink, 1
  %cmp46 = icmp sle i32 %add, %0
  br i1 %cmp46, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond45
  %idxprom48 = sext i32 %add to i64
  %arrayidx49 = getelementptr inbounds [100 x float], ptr %x, i64 0, i64 %idxprom48
  %4 = load float, ptr %arrayidx49, align 4, !tbaa !12
  %conv50 = sitofp i32 %max2.6 to float
  %cmp51 = fcmp ogt float %4, %conv50
  br i1 %cmp51, label %if.then52, label %for.inc57

if.then52:                                        ; preds = %for.body47
  %conv55 = fptosi float %4 to i32
  br label %for.inc57

for.inc57:                                        ; preds = %for.body47, %if.then52
  %max2.7 = phi i32 [ %conv55, %if.then52 ], [ %max2.6, %for.body47 ]
  br label %for.cond45, !llvm.loop !16

for.end59:                                        ; preds = %for.cond45
  %call60 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max1.0)
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call60, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call61, i32 noundef %max2.6)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %x) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERf(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
