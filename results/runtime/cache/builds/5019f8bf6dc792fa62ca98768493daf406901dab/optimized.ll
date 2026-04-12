; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7ursaob2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZZ4mainE6jcount = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@_ZZ4mainE5group = internal unnamed_addr global [20 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %part = alloca [20 x [16 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 1280, ptr noundef align 16 %part) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21 ]
  %cmp = icmp slt i32 %i.0, 20
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20 x [16 x i32]], ptr %part, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %arrayidx7 = getelementptr inbounds [20 x i32], ptr @_ZZ4mainE6jcount, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %arrayidx7, align 4, !tbaa !5
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %1, 0
  br i1 %cmp12, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc13 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds [20 x [16 x i32]], ptr %part, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [16 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %2, -1
  br i1 %cmp18, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end23:                                        ; preds = %for.end, %for.cond
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc67, %for.end23
  %i.1 = phi i32 [ 0, %for.end23 ], [ %inc68, %for.inc67 ]
  %cmp25 = icmp slt i32 %i.1, %i.0
  br i1 %cmp25, label %for.body26, label %for.end69

for.body26:                                       ; preds = %for.cond24
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc64, %for.body26
  %j.1 = phi i32 [ 0, %for.body26 ], [ %inc65, %for.inc64 ]
  %idxprom28 = sext i32 %i.1 to i64
  %arrayidx29 = getelementptr inbounds [20 x i32], ptr @_ZZ4mainE6jcount, i64 0, i64 %idxprom28
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp30 = icmp slt i32 %j.1, %sub
  br i1 %cmp30, label %for.body31, label %for.inc67

for.body31:                                       ; preds = %for.cond27
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc61, %for.body31
  %k.0 = phi i32 [ 0, %for.body31 ], [ %inc62, %for.inc61 ]
  %cmp36 = icmp slt i32 %k.0, %sub
  br i1 %cmp36, label %for.body37, label %for.inc64

for.body37:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds [20 x [16 x i32]], ptr %part, i64 0, i64 %idxprom28
  %idxprom40 = sext i32 %j.1 to i64
  %arrayidx41 = getelementptr inbounds [16 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %idxprom44 = sext i32 %k.0 to i64
  %arrayidx45 = getelementptr inbounds [16 x i32], ptr %arrayidx39, i64 0, i64 %idxprom44
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %div = sdiv i32 %4, %5
  %cmp46 = icmp eq i32 %div, 2
  br i1 %cmp46, label %land.lhs.true, label %for.inc61

land.lhs.true:                                    ; preds = %for.body37
  %rem = srem i32 %4, %5
  %cmp55 = icmp eq i32 %rem, 0
  br i1 %cmp55, label %if.then56, label %for.inc61

if.then56:                                        ; preds = %land.lhs.true
  %arrayidx58 = getelementptr inbounds [20 x i32], ptr @_ZZ4mainE5group, i64 0, i64 %idxprom28
  %6 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %inc59 = add nsw i32 %6, 1
  store i32 %inc59, ptr %arrayidx58, align 4, !tbaa !5
  br label %for.inc61

for.inc61:                                        ; preds = %for.body37, %land.lhs.true, %if.then56
  %inc62 = add nsw i32 %k.0, 1
  br label %for.cond32, !llvm.loop !13

for.inc64:                                        ; preds = %for.cond32
  %inc65 = add nsw i32 %j.1, 1
  br label %for.cond27, !llvm.loop !14

for.inc67:                                        ; preds = %for.cond27
  %inc68 = add nsw i32 %i.1, 1
  br label %for.cond24, !llvm.loop !15

for.end69:                                        ; preds = %for.cond24
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc77, %for.end69
  %output.0 = phi i32 [ 0, %for.end69 ], [ %inc78, %for.inc77 ]
  %cmp71 = icmp slt i32 %output.0, %i.0
  br i1 %cmp71, label %for.inc77, label %for.end79

for.inc77:                                        ; preds = %for.cond70
  %idxprom73 = sext i32 %output.0 to i64
  %arrayidx74 = getelementptr inbounds [20 x i32], ptr @_ZZ4mainE5group, i64 0, i64 %idxprom73
  %7 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc78 = add nsw i32 %output.0, 1
  br label %for.cond70, !llvm.loop !16

for.end79:                                        ; preds = %for.cond70
  call void @llvm.lifetime.end.p0(i64 noundef 1280, ptr noundef %part) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
