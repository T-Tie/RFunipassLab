; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo5jsx3ul.cpp"
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

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z3cuti(i32 noundef %t) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc26, %for.inc25 ]
  %cmp = icmp slt i32 %i.0, %t
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %s.0 = phi i32 [ 9999, %for.body ], [ %s.1, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %t
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %0, %s.0
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %s.1 = phi i32 [ %0, %if.then ], [ %s.0, %for.body3 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc22, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc23, %for.inc22 ]
  %cmp12 = icmp slt i32 %j.1, %t
  br i1 %cmp12, label %for.inc22, label %for.inc25

for.inc22:                                        ; preds = %for.cond11
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom14
  %idxprom16 = sext i32 %j.1 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %s.0
  store i32 %sub, ptr %arrayidx17, align 4, !tbaa !5
  %inc23 = add nsw i32 %j.1, 1
  br label %for.cond11, !llvm.loop !12

for.inc25:                                        ; preds = %for.cond11
  %inc26 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end27:                                        ; preds = %for.cond
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc63, %for.end27
  %i.1 = phi i32 [ 0, %for.end27 ], [ %inc64, %for.inc63 ]
  %cmp29 = icmp slt i32 %i.1, %t
  br i1 %cmp29, label %for.body30, label %for.end65

for.body30:                                       ; preds = %for.cond28
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc45, %for.body30
  %j.2 = phi i32 [ 0, %for.body30 ], [ %inc46, %for.inc45 ]
  %s.2 = phi i32 [ 9999, %for.body30 ], [ %s.3, %for.inc45 ]
  %cmp32 = icmp slt i32 %j.2, %t
  br i1 %cmp32, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond31
  %idxprom34 = sext i32 %j.2 to i64
  %arrayidx35 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom34
  %idxprom36 = sext i32 %i.1 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %2 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %2, %s.2
  br i1 %cmp38, label %if.then39, label %for.inc45

if.then39:                                        ; preds = %for.body33
  br label %for.inc45

for.inc45:                                        ; preds = %for.body33, %if.then39
  %s.3 = phi i32 [ %2, %if.then39 ], [ %s.2, %for.body33 ]
  %inc46 = add nsw i32 %j.2, 1
  br label %for.cond31, !llvm.loop !14

for.end47:                                        ; preds = %for.cond31
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc60, %for.end47
  %j.3 = phi i32 [ 0, %for.end47 ], [ %inc61, %for.inc60 ]
  %cmp49 = icmp slt i32 %j.3, %t
  br i1 %cmp49, label %for.inc60, label %for.inc63

for.inc60:                                        ; preds = %for.cond48
  %idxprom51 = sext i32 %j.3 to i64
  %arrayidx52 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom51
  %idxprom53 = sext i32 %i.1 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %3 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %sub55 = sub nsw i32 %3, %s.2
  store i32 %sub55, ptr %arrayidx54, align 4, !tbaa !5
  %inc61 = add nsw i32 %j.3, 1
  br label %for.cond48, !llvm.loop !15

for.inc63:                                        ; preds = %for.cond48
  %inc64 = add nsw i32 %i.1, 1
  br label %for.cond28, !llvm.loop !16

for.end65:                                        ; preds = %for.cond28
  %dec = add nsw i32 %t, -1
  %cmp66 = icmp eq i32 %dec, 1
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.end65
  %4 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  br label %cleanup

if.end68:                                         ; preds = %for.end65
  %5 = load i32, ptr getelementptr inbounds ([100 x i32], ptr getelementptr inbounds ([100 x [100 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc125, %if.end68
  %i.2 = phi i32 [ 0, %if.end68 ], [ %inc126, %for.inc125 ]
  %cmp70 = icmp slt i32 %i.2, %t
  br i1 %cmp70, label %for.body71, label %for.end127

for.body71:                                       ; preds = %for.cond69
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc122, %for.body71
  %j.4 = phi i32 [ 0, %for.body71 ], [ %inc123, %for.inc122 ]
  %cmp74 = icmp slt i32 %j.4, %t
  br i1 %cmp74, label %for.body75, label %for.inc125

for.body75:                                       ; preds = %for.cond72
  %cmp76 = icmp eq i32 %i.2, 0
  br i1 %cmp76, label %land.lhs.true, label %if.else79

land.lhs.true:                                    ; preds = %for.body75
  %cmp77 = icmp eq i32 %j.4, 0
  br i1 %cmp77, label %for.inc122, label %lor.lhs.false

if.else79:                                        ; preds = %for.body75
  %cmp80 = icmp eq i32 %i.2, 1
  br i1 %cmp80, label %for.inc122, label %lor.lhs.false.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp81 = icmp eq i32 %j.4, 1
  br i1 %cmp81, label %for.inc122, label %if.then85

lor.lhs.false.thread:                             ; preds = %if.else79
  %cmp813 = icmp eq i32 %j.4, 1
  br i1 %cmp813, label %for.inc122, label %if.else95

if.then85:                                        ; preds = %lor.lhs.false
  %idxprom88 = sext i32 %j.4 to i64
  %arrayidx89 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom88
  %6 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %sub92 = sub nsw i32 %j.4, 1
  %idxprom93 = sext i32 %sub92 to i64
  %arrayidx94 = getelementptr inbounds [100 x i32], ptr @a, i64 0, i64 %idxprom93
  store i32 %6, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.inc122

if.else95:                                        ; preds = %lor.lhs.false.thread
  %cmp96 = icmp eq i32 %j.4, 0
  br i1 %cmp96, label %if.then97, label %if.else107

if.then97:                                        ; preds = %if.else95
  %idxprom98 = sext i32 %i.2 to i64
  %arrayidx99 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom98
  %7 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %sub102 = sub nsw i32 %i.2, 1
  %idxprom103 = sext i32 %sub102 to i64
  %arrayidx104 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom103
  store i32 %7, ptr %arrayidx104, align 4, !tbaa !5
  br label %for.inc122

if.else107:                                       ; preds = %if.else95
  %idxprom108 = sext i32 %i.2 to i64
  %arrayidx109 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom108
  %idxprom110 = sext i32 %j.4 to i64
  %arrayidx111 = getelementptr inbounds [100 x i32], ptr %arrayidx109, i64 0, i64 %idxprom110
  %8 = load i32, ptr %arrayidx111, align 4, !tbaa !5
  %sub112 = sub nsw i32 %i.2, 1
  %idxprom113 = sext i32 %sub112 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom113
  %sub115 = sub nsw i32 %j.4, 1
  %idxprom116 = sext i32 %sub115 to i64
  %arrayidx117 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom116
  store i32 %8, ptr %arrayidx117, align 4, !tbaa !5
  br label %for.inc122

for.inc122:                                       ; preds = %if.then85, %if.else107, %if.then97, %lor.lhs.false.thread, %if.else79, %lor.lhs.false, %land.lhs.true
  %inc123 = add nsw i32 %j.4, 1
  br label %for.cond72, !llvm.loop !17

for.inc125:                                       ; preds = %for.cond72
  %inc126 = add nsw i32 %i.2, 1
  br label %for.cond69, !llvm.loop !18

for.end127:                                       ; preds = %for.cond69
  %call = call noundef i32 @_Z3cuti(i32 noundef %dec) #7
  %add128 = add nsw i32 %5, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end127, %if.then67
  %retval.0 = phi i32 [ %4, %if.then67 ], [ %add128, %for.end127 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc9, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc10, %for.inc9 ]
  %cmp2 = icmp slt i32 %j.0, %0
  br i1 %cmp2, label %for.body3, label %for.end11

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %cmp5 = icmp slt i32 %k.0, %0
  br i1 %cmp5, label %for.inc, label %for.inc9

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %k.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !19

for.inc9:                                         ; preds = %for.cond4
  %inc10 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !20

for.end11:                                        ; preds = %for.cond1
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc26, %for.end11
  %j.1 = phi i32 [ 0, %for.end11 ], [ %inc27, %for.inc26 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %j.1, %1
  br i1 %cmp13, label %for.body14, label %for.inc32

for.body14:                                       ; preds = %for.cond12
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.body14
  %k.1 = phi i32 [ 0, %for.body14 ], [ %inc24, %for.inc23 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %k.1, %2
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom18
  %idxprom20 = sext i32 %k.1 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %call22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx21)
  %inc24 = add nsw i32 %k.1, 1
  br label %for.cond15, !llvm.loop !21

for.inc26:                                        ; preds = %for.cond15
  %inc27 = add nsw i32 %j.1, 1
  br label %for.cond12, !llvm.loop !22

for.inc32:                                        ; preds = %for.cond12
  %call29 = call noundef i32 @_Z3cuti(i32 noundef %1) #9
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call29)
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call30, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc33 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !23

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !24
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !32
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !33
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !35
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!24 = !{!25, !7, i64 56}
!25 = !{!"_ZTSSt5ctypeIcE", !26, i64 0, !27, i64 16, !29, i64 24, !30, i64 32, !30, i64 40, !31, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!26 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!27 = !{!"p1 _ZTS15__locale_struct", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 int", !28, i64 0}
!31 = !{!"p1 short", !28, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"vtable pointer", !8, i64 0}
!35 = !{}
