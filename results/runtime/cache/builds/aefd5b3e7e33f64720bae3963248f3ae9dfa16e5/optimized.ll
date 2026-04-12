; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb0pnj8ab.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@sum = dso_local local_unnamed_addr global i32 0, align 4
@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z7guilingi(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc29, %for.inc28 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %min.0 = phi i32 [ %0, %for.body ], [ %min.1, %for.inc ]
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %1, %min.0
  br i1 %cmp9, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %for.body4, %if.then
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body4 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc26, %for.inc25 ]
  %cmp15 = icmp slt i32 %j.1, %n
  br i1 %cmp15, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond14
  %idxprom19 = sext i32 %j.1 to i64
  %arrayidx20 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom19
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %inc26 = add nsw i32 %j.1, 1
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %inc29 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end30:                                        ; preds = %for.cond
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc69, %for.end30
  %i.1 = phi i32 [ 0, %for.end30 ], [ %inc70, %for.inc69 ]
  %cmp32 = icmp slt i32 %i.1, %n
  br i1 %cmp32, label %for.body33, label %for.end71

for.body33:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i.1 to i64
  %arrayidx36 = getelementptr inbounds [101 x i32], ptr @a, i64 0, i64 %idxprom35
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc51, %for.body33
  %j.2 = phi i32 [ 1, %for.body33 ], [ %inc52, %for.inc51 ]
  %min34.0 = phi i32 [ %3, %for.body33 ], [ %min34.1, %for.inc51 ]
  %cmp38 = icmp slt i32 %j.2, %n
  br i1 %cmp38, label %for.body39, label %for.end53

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %j.2 to i64
  %arrayidx41 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom40
  %arrayidx43 = getelementptr inbounds [101 x i32], ptr %arrayidx41, i64 0, i64 %idxprom35
  %4 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %4, %min34.0
  br i1 %cmp44, label %if.then45, label %for.inc51

if.then45:                                        ; preds = %for.body39
  br label %for.inc51

for.inc51:                                        ; preds = %for.body39, %if.then45
  %min34.1 = phi i32 [ %4, %if.then45 ], [ %min34.0, %for.body39 ]
  %inc52 = add nsw i32 %j.2, 1
  br label %for.cond37, !llvm.loop !14

for.end53:                                        ; preds = %for.cond37
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc66, %for.end53
  %j.3 = phi i32 [ 0, %for.end53 ], [ %inc67, %for.inc66 ]
  %cmp55 = icmp slt i32 %j.3, %n
  br i1 %cmp55, label %for.inc66, label %for.inc69

for.inc66:                                        ; preds = %for.cond54
  %idxprom57 = sext i32 %j.3 to i64
  %arrayidx58 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom57
  %arrayidx60 = getelementptr inbounds [101 x i32], ptr %arrayidx58, i64 0, i64 %idxprom35
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %sub61 = sub nsw i32 %5, %min34.0
  store i32 %sub61, ptr %arrayidx60, align 4, !tbaa !5
  %inc67 = add nsw i32 %j.3, 1
  br label %for.cond54, !llvm.loop !15

for.inc69:                                        ; preds = %for.cond54
  %inc70 = add nsw i32 %i.1, 1
  br label %for.cond31, !llvm.loop !16

for.end71:                                        ; preds = %for.cond31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc11, %for.inc10 ]
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 %i.0, %sub
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %n
  br i1 %cmp2, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond1
  %add = add nsw i32 %i.0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %idxprom6 = sext i32 %i.0 to i64
  %arrayidx7 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom6
  %arrayidx9 = getelementptr inbounds [101 x i32], ptr %arrayidx7, i64 0, i64 %idxprom4
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !17

for.inc10:                                        ; preds = %for.cond1
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !18

for.end12:                                        ; preds = %for.cond
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc33, %for.end12
  %i.1 = phi i32 [ 1, %for.end12 ], [ %inc34, %for.inc33 ]
  %cmp15 = icmp slt i32 %i.1, %sub
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond13
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %j.1 = phi i32 [ 0, %for.body16 ], [ %inc31, %for.inc30 ]
  %cmp19 = icmp slt i32 %j.1, %sub
  br i1 %cmp19, label %for.inc30, label %for.inc33

for.inc30:                                        ; preds = %for.cond17
  %idxprom21 = sext i32 %j.1 to i64
  %arrayidx22 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom21
  %add23 = add nsw i32 %i.1, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [101 x i32], ptr %arrayidx22, i64 0, i64 %idxprom24
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %idxprom28 = sext i32 %i.1 to i64
  %arrayidx29 = getelementptr inbounds [101 x i32], ptr %arrayidx22, i64 0, i64 %idxprom28
  store i32 %1, ptr %arrayidx29, align 4, !tbaa !5
  %inc31 = add nsw i32 %j.1, 1
  br label %for.cond17, !llvm.loop !19

for.inc33:                                        ; preds = %for.cond17
  %inc34 = add nsw i32 %i.1, 1
  br label %for.cond13, !llvm.loop !20

for.end35:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fi(i32 noundef %n) local_unnamed_addr #2 {
entry:
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.end, label %if.else

if.else:                                          ; preds = %entry
  call void @_Z7guilingi(i32 noundef %n)
  %0 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %1 = load i32, ptr @sum, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  store i32 %add, ptr @sum, align 4, !tbaa !5
  call void @_Z8xiaojiani(i32 noundef %n)
  %sub = sub nsw i32 %n, 1
  call void @_Z1fi(i32 noundef %sub)
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr @sum, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.inc12 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body4, label %for.inc17

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %k.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %k.0, %2
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %k.0 to i64
  %arrayidx10 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond5, !llvm.loop !21

for.inc12:                                        ; preds = %for.cond5
  %inc13 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !22

for.inc17:                                        ; preds = %for.cond1
  call void @_Z1fi(i32 noundef %1)
  %3 = load i32, ptr @sum, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc18 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !23

for.end19:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
