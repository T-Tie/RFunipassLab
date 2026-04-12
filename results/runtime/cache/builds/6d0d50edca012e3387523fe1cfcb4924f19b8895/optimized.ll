; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf3hschbx.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %a) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc144, %for.inc143 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end145

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc138, %for.end12
  %temp.0 = phi i32 [ 1, %for.end12 ], [ %inc137, %for.inc138 ]
  %sum.0 = phi i32 [ 0, %for.end12 ], [ %add, %for.inc138 ]
  %l.0 = phi i32 [ 0, %for.end12 ], [ %inc139, %for.inc138 ]
  %sub = sub nsw i32 %1, 1
  %cmp14 = icmp slt i32 %l.0, %sub
  br i1 %cmp14, label %for.body15, label %for.inc143

for.body15:                                       ; preds = %for.cond13
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc60, %for.body15
  %i.1 = phi i32 [ 0, %for.body15 ], [ %inc61, %for.inc60 ]
  %cmp17 = icmp slt i32 %i.1, %1
  br i1 %cmp17, label %for.body18, label %for.end62

for.body18:                                       ; preds = %for.cond16
  %idxprom19 = sext i32 %i.1 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc40, %for.inc39 ]
  %min.0 = phi i32 [ %3, %for.body18 ], [ %min.1, %for.inc39 ]
  %cmp23 = icmp slt i32 %j.1, %1
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond22
  %idxprom27 = sext i32 %j.1 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom27
  %4 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %cmp29 = icmp slt i32 %4, %min.0
  br i1 %cmp29, label %land.lhs.true, label %for.inc39

land.lhs.true:                                    ; preds = %for.body24
  %cmp34 = icmp sge i32 %4, 0
  br i1 %cmp34, label %if.then, label %for.inc39

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc39

for.inc39:                                        ; preds = %for.body24, %land.lhs.true, %if.then
  %min.1 = phi i32 [ %4, %if.then ], [ %min.0, %land.lhs.true ], [ %min.0, %for.body24 ]
  %inc40 = add nsw i32 %j.1, 1
  br label %for.cond22, !llvm.loop !14

for.end41:                                        ; preds = %for.cond22
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.end41
  %j.2 = phi i32 [ 0, %for.end41 ], [ %inc58, %for.inc57 ]
  %cmp43 = icmp slt i32 %j.2, %1
  br i1 %cmp43, label %for.body44, label %for.inc60

for.body44:                                       ; preds = %for.cond42
  %idxprom47 = sext i32 %j.2 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom47
  %5 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %cmp49 = icmp sge i32 %5, 0
  br i1 %cmp49, label %if.then50, label %for.inc57

if.then50:                                        ; preds = %for.body44
  %sub55 = sub nsw i32 %5, %min.0
  store i32 %sub55, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body44, %if.then50
  %inc58 = add nsw i32 %j.2, 1
  br label %for.cond42, !llvm.loop !15

for.inc60:                                        ; preds = %for.cond42
  %inc61 = add nsw i32 %i.1, 1
  br label %for.cond16, !llvm.loop !16

for.end62:                                        ; preds = %for.cond16
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc110, %for.end62
  %j.3 = phi i32 [ 0, %for.end62 ], [ %inc111, %for.inc110 ]
  %cmp64 = icmp slt i32 %j.3, %1
  br i1 %cmp64, label %for.body65, label %for.end112

for.body65:                                       ; preds = %for.cond63
  %idxprom67 = sext i32 %j.3 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom67
  %6 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc89, %for.body65
  %i.2 = phi i32 [ 0, %for.body65 ], [ %inc90, %for.inc89 ]
  %min.2 = phi i32 [ %6, %for.body65 ], [ %min.3, %for.inc89 ]
  %cmp70 = icmp slt i32 %i.2, %1
  br i1 %cmp70, label %for.body71, label %for.end91

for.body71:                                       ; preds = %for.cond69
  %idxprom72 = sext i32 %i.2 to i64
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx73, i64 0, i64 %idxprom67
  %7 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !13
  %cmp76 = icmp slt i32 %7, %min.2
  br i1 %cmp76, label %land.lhs.true77, label %for.inc89

land.lhs.true77:                                  ; preds = %for.body71
  %cmp82 = icmp sge i32 %7, 0
  br i1 %cmp82, label %if.then83, label %for.inc89

if.then83:                                        ; preds = %land.lhs.true77
  br label %for.inc89

for.inc89:                                        ; preds = %for.body71, %land.lhs.true77, %if.then83
  %min.3 = phi i32 [ %7, %if.then83 ], [ %min.2, %land.lhs.true77 ], [ %min.2, %for.body71 ]
  %inc90 = add nsw i32 %i.2, 1
  br label %for.cond69, !llvm.loop !17

for.end91:                                        ; preds = %for.cond69
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc107, %for.end91
  %i.3 = phi i32 [ 0, %for.end91 ], [ %inc108, %for.inc107 ]
  %cmp93 = icmp slt i32 %i.3, %1
  br i1 %cmp93, label %for.body94, label %for.inc110

for.body94:                                       ; preds = %for.cond92
  %idxprom95 = sext i32 %i.3 to i64
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom95
  %arrayidx98 = getelementptr inbounds [100 x i32], ptr %arrayidx96, i64 0, i64 %idxprom67
  %8 = load i32, ptr %arrayidx98, align 4, !tbaa !5, !invariant.load !13
  %cmp99 = icmp sge i32 %8, 0
  br i1 %cmp99, label %if.then100, label %for.inc107

if.then100:                                       ; preds = %for.body94
  %sub105 = sub nsw i32 %8, %min.2
  store i32 %sub105, ptr %arrayidx98, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body94, %if.then100
  %inc108 = add nsw i32 %i.3, 1
  br label %for.cond92, !llvm.loop !18

for.inc110:                                       ; preds = %for.cond92
  %inc111 = add nsw i32 %j.3, 1
  br label %for.cond63, !llvm.loop !19

for.end112:                                       ; preds = %for.cond63
  %idxprom113 = sext i32 %temp.0 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom113
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom113
  %9 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !13
  %add = add nsw i32 %sum.0, %9
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc124, %for.end112
  %i.4 = phi i32 [ 0, %for.end112 ], [ %inc125, %for.inc124 ]
  %cmp118 = icmp slt i32 %i.4, %1
  br i1 %cmp118, label %for.inc124, label %for.end126

for.inc124:                                       ; preds = %for.cond117
  %idxprom120 = sext i32 %i.4 to i64
  %arrayidx121 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom120
  %arrayidx123 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom113
  store i32 -1, ptr %arrayidx123, align 4, !tbaa !5
  %inc125 = add nsw i32 %i.4, 1
  br label %for.cond117, !llvm.loop !20

for.end126:                                       ; preds = %for.cond117
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc134, %for.end126
  %j.4 = phi i32 [ 0, %for.end126 ], [ %inc135, %for.inc134 ]
  %cmp128 = icmp slt i32 %j.4, %1
  br i1 %cmp128, label %for.inc134, label %for.inc138

for.inc134:                                       ; preds = %for.cond127
  %idxprom132 = sext i32 %j.4 to i64
  %arrayidx133 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom132
  store i32 -1, ptr %arrayidx133, align 4, !tbaa !5
  %inc135 = add nsw i32 %j.4, 1
  br label %for.cond127, !llvm.loop !21

for.inc138:                                       ; preds = %for.cond127
  %inc137 = add nsw i32 %temp.0, 1
  %inc139 = add nsw i32 %l.0, 1
  br label %for.cond13, !llvm.loop !22

for.inc143:                                       ; preds = %for.cond13
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call141, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc144 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !23

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !24, !invariant.load !13
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !13
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !26, !invariant.load !13
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

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
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !44, !invariant.load !13
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !50, !invariant.load !13
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24, !invariant.load !13
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
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !41, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !38, i64 216, !7, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!28 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !32, i64 40, !34, i64 48, !7, i64 64, !6, i64 192, !35, i64 200, !36, i64 208}
!29 = !{!"long", !7, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !33, i64 0, !29, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !33, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !33, i64 0}
!38 = !{!"p1 _ZTSSo", !33, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !33, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !39, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !33, i64 0}
!48 = !{!"p1 int", !33, i64 0}
!49 = !{!"p1 short", !33, i64 0}
!50 = !{!7, !7, i64 0}
