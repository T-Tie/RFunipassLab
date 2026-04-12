; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_tz4wov2.cpp"
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
  %num = alloca [30 x i32], align 16
  %count = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %num) #5
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef align 16 %count) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %count, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc30, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc31, %for.inc30 ]
  %cmp5 = icmp slt i32 %i.1, %0
  br i1 %cmp5, label %for.body6, label %for.end32

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc27, %for.body6
  %j.0 = phi i32 [ 0, %for.body6 ], [ %inc28, %for.inc27 ]
  %cmp8 = icmp slt i32 %j.0, %i.1
  br i1 %cmp8, label %for.body9, label %for.inc30

for.body9:                                        ; preds = %for.cond7
  %idxprom10 = sext i32 %i.1 to i64
  %arrayidx11 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom10
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom12
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %1, %2
  br i1 %cmp14, label %if.then, label %for.inc27

if.then:                                          ; preds = %for.body9
  %arrayidx16 = getelementptr inbounds [30 x i32], ptr %count, i64 0, i64 %idxprom10
  %3 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds [30 x i32], ptr %count, i64 0, i64 %idxprom12
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  %cmp19 = icmp slt i32 %3, %add
  br i1 %cmp19, label %if.then20, label %for.inc27

if.then20:                                        ; preds = %if.then
  store i32 %add, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body9, %if.then20, %if.then
  %inc28 = add nsw i32 %j.0, 1
  br label %for.cond7, !llvm.loop !12

for.inc30:                                        ; preds = %for.cond7
  %inc31 = add nsw i32 %i.1, 1
  br label %for.cond4, !llvm.loop !13

for.end32:                                        ; preds = %for.cond4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %for.end32
  %i.2 = phi i32 [ 0, %for.end32 ], [ %inc44, %for.inc43 ]
  %max.0 = phi i32 [ 1, %for.end32 ], [ %max.1, %for.inc43 ]
  %cmp34 = icmp slt i32 %i.2, %0
  br i1 %cmp34, label %for.body35, label %for.end45

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %i.2 to i64
  %arrayidx37 = getelementptr inbounds [30 x i32], ptr %count, i64 0, i64 %idxprom36
  %5 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %5, %max.0
  br i1 %cmp38, label %if.then39, label %for.inc43

if.then39:                                        ; preds = %for.body35
  br label %for.inc43

for.inc43:                                        ; preds = %for.body35, %if.then39
  %max.1 = phi i32 [ %5, %if.then39 ], [ %max.0, %for.body35 ]
  %inc44 = add nsw i32 %i.2, 1
  br label %for.cond33, !llvm.loop !14

for.end45:                                        ; preds = %for.cond33
  %call46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0)
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call46, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %count) #6
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef %num) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
