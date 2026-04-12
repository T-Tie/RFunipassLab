; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnjafe3j3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shuzu = alloca [1002 x [1002 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4016016, ptr noundef %shuzu) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [1002 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc56, %for.end9
  %y2.0 = phi i32 [ undef, %for.end9 ], [ %y2.1, %for.inc56 ]
  %x2.0 = phi i32 [ undef, %for.end9 ], [ %x2.1, %for.inc56 ]
  %y1.0 = phi i32 [ undef, %for.end9 ], [ %y1.1, %for.inc56 ]
  %x1.0 = phi i32 [ undef, %for.end9 ], [ %x1.1, %for.inc56 ]
  %i.1 = phi i32 [ 1, %for.end9 ], [ %inc57, %for.inc56 ]
  %cmp11 = icmp sle i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end58

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc53, %for.body12
  %y2.1 = phi i32 [ %y2.0, %for.body12 ], [ %y2.2, %for.inc53 ]
  %x2.1 = phi i32 [ %x2.0, %for.body12 ], [ %x2.2, %for.inc53 ]
  %y1.1 = phi i32 [ %y1.0, %for.body12 ], [ %y1.3, %for.inc53 ]
  %x1.1 = phi i32 [ %x1.0, %for.body12 ], [ %x1.3, %for.inc53 ]
  %j.1 = phi i32 [ 1, %for.body12 ], [ %inc54, %for.inc53 ]
  %cmp14 = icmp sle i32 %j.1, %0
  br i1 %cmp14, label %for.body15, label %for.inc56

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [1002 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc53

land.lhs.true:                                    ; preds = %for.body15
  %add = add nsw i32 %j.1, 1
  %idxprom23 = sext i32 %add to i64
  %arrayidx24 = getelementptr inbounds [1002 x i32], ptr %arrayidx17, i64 0, i64 %idxprom23
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !13
  %cmp25 = icmp eq i32 %3, 0
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true38

land.lhs.true26:                                  ; preds = %land.lhs.true
  %add27 = add nsw i32 %i.1, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %idxprom28
  %arrayidx31 = getelementptr inbounds [1002 x i32], ptr %arrayidx29, i64 0, i64 %idxprom18
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5, !invariant.load !13
  %cmp32 = icmp eq i32 %4, 0
  br i1 %cmp32, label %if.then, label %land.lhs.true38

if.then:                                          ; preds = %land.lhs.true26
  br label %land.lhs.true38

land.lhs.true38:                                  ; preds = %if.then, %land.lhs.true26, %land.lhs.true
  %y1.2 = phi i32 [ %j.1, %if.then ], [ %y1.1, %land.lhs.true26 ], [ %y1.1, %land.lhs.true ]
  %x1.2 = phi i32 [ %i.1, %if.then ], [ %x1.1, %land.lhs.true26 ], [ %x1.1, %land.lhs.true ]
  %sub = sub nsw i32 %j.1, 1
  %idxprom41 = sext i32 %sub to i64
  %arrayidx42 = getelementptr inbounds [1002 x i32], ptr %arrayidx17, i64 0, i64 %idxprom41
  %5 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %cmp43 = icmp eq i32 %5, 0
  br i1 %cmp43, label %land.lhs.true44, label %for.inc53

land.lhs.true44:                                  ; preds = %land.lhs.true38
  %sub45 = sub nsw i32 %i.1, 1
  %idxprom46 = sext i32 %sub45 to i64
  %arrayidx47 = getelementptr inbounds [1002 x [1002 x i32]], ptr %shuzu, i64 0, i64 %idxprom46
  %arrayidx49 = getelementptr inbounds [1002 x i32], ptr %arrayidx47, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !13
  %cmp50 = icmp eq i32 %6, 0
  br i1 %cmp50, label %if.then51, label %for.inc53

if.then51:                                        ; preds = %land.lhs.true44
  br label %for.inc53

for.inc53:                                        ; preds = %land.lhs.true38, %land.lhs.true44, %if.then51, %for.body15
  %y2.2 = phi i32 [ %j.1, %if.then51 ], [ %y2.1, %land.lhs.true44 ], [ %y2.1, %land.lhs.true38 ], [ %y2.1, %for.body15 ]
  %x2.2 = phi i32 [ %i.1, %if.then51 ], [ %x2.1, %land.lhs.true44 ], [ %x2.1, %land.lhs.true38 ], [ %x2.1, %for.body15 ]
  %y1.3 = phi i32 [ %y1.2, %if.then51 ], [ %y1.2, %land.lhs.true44 ], [ %y1.2, %land.lhs.true38 ], [ %y1.1, %for.body15 ]
  %x1.3 = phi i32 [ %x1.2, %if.then51 ], [ %x1.2, %land.lhs.true44 ], [ %x1.2, %land.lhs.true38 ], [ %x1.1, %for.body15 ]
  %inc54 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !14

for.inc56:                                        ; preds = %for.cond13
  %inc57 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !15

for.end58:                                        ; preds = %for.cond10
  %sub59 = sub nsw i32 %x2.0, %x1.0
  %add60 = add nsw i32 %sub59, 1
  %sub61 = sub nsw i32 %y2.0, %y1.0
  %add62 = add nsw i32 %sub61, 1
  %mul = mul nsw i32 %add60, %add62
  %mul65 = mul nsw i32 2, %add60
  %sub66 = sub nsw i32 %mul, %mul65
  %mul69 = mul nsw i32 2, %add62
  %sub70 = sub nsw i32 %sub66, %mul69
  %add71 = add nsw i32 %sub70, 4
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %add71)
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call72, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4016016, ptr noundef %shuzu) #7
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

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !16, !invariant.load !13
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !24, !invariant.load !13
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !25, !invariant.load !13
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !13
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !7, i64 56}
!17 = !{!"_ZTSSt5ctypeIcE", !18, i64 0, !19, i64 16, !21, i64 24, !22, i64 32, !22, i64 40, !23, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!18 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!19 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"bool", !7, i64 0}
!22 = !{!"p1 int", !20, i64 0}
!23 = !{!"p1 short", !20, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
