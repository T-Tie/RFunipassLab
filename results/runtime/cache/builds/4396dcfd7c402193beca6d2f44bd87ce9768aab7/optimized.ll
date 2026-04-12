; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnro4yszv.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %min = alloca i32, align 4
  %sum = alloca i32, align 4
  %a = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #6
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef align 16 %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %.sink = phi i32 [ %0, %entry ], [ %dec141, %while.end ]
  %cmp = icmp sgt i32 %.sink, 0
  br i1 %cmp, label %while.body, label %while.end142

while.body:                                       ; preds = %while.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %while.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %inc9 = add nsw i32 %1, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  br label %while.cond11

while.cond11:                                     ; preds = %for.end138, %for.end10
  %5 = phi i32 [ %dec, %for.end138 ], [ %2, %for.end10 ]
  %cmp12 = icmp sgt i32 %5, 1
  br i1 %cmp12, label %while.body13, label %while.end

while.body13:                                     ; preds = %while.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc49, %while.body13
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %6, %5
  br i1 %cmp15, label %for.body16, label %for.end51

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom17
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %7, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %for.body16
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %8, %5
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %9 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom25 = sext i32 %8 to i64
  %arrayidx26 = getelementptr inbounds [105 x i32], ptr %arrayidx18, i64 0, i64 %idxprom25
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %9, %10
  br i1 %cmp27, label %if.then, label %for.inc32

if.then:                                          ; preds = %for.body22
  store i32 %10, ptr %min, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body22, %if.then
  %inc33 = add nsw i32 %8, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end34:                                        ; preds = %for.cond20
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end34
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %11, %5
  br i1 %cmp36, label %for.inc46, label %for.inc49

for.inc46:                                        ; preds = %for.cond35
  %idxprom40 = sext i32 %11 to i64
  %arrayidx41 = getelementptr inbounds [105 x i32], ptr %arrayidx18, i64 0, i64 %idxprom40
  %12 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %13 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %inc47 = add nsw i32 %11, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond35
  %inc50 = add nsw i32 %6, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !15

for.end51:                                        ; preds = %for.cond14
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc90, %for.end51
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %14, %5
  br i1 %cmp53, label %for.body54, label %for.end92

for.body54:                                       ; preds = %for.cond52
  %idxprom56 = sext i32 %14 to i64
  %arrayidx57 = getelementptr inbounds [105 x i32], ptr %a, i64 0, i64 %idxprom56
  %15 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  store i32 %15, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc72, %for.body54
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %16, %5
  br i1 %cmp59, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom61 = sext i32 %16 to i64
  %arrayidx62 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom61
  %arrayidx64 = getelementptr inbounds [105 x i32], ptr %arrayidx62, i64 0, i64 %idxprom56
  %18 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp sgt i32 %17, %18
  br i1 %cmp65, label %if.then66, label %for.inc72

if.then66:                                        ; preds = %for.body60
  store i32 %18, ptr %min, align 4, !tbaa !5
  br label %for.inc72

for.inc72:                                        ; preds = %for.body60, %if.then66
  %inc73 = add nsw i32 %16, 1
  store i32 %inc73, ptr %i, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !16

for.end74:                                        ; preds = %for.cond58
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc87, %for.end74
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %19, %5
  br i1 %cmp76, label %for.inc87, label %for.inc90

for.inc87:                                        ; preds = %for.cond75
  %idxprom78 = sext i32 %19 to i64
  %arrayidx79 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom78
  %arrayidx81 = getelementptr inbounds [105 x i32], ptr %arrayidx79, i64 0, i64 %idxprom56
  %20 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %21 = load i32, ptr %min, align 4, !tbaa !5
  %sub82 = sub nsw i32 %20, %21
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %inc88 = add nsw i32 %19, 1
  store i32 %inc88, ptr %i, align 4, !tbaa !5
  br label %for.cond75, !llvm.loop !17

for.inc90:                                        ; preds = %for.cond75
  %inc91 = add nsw i32 %14, 1
  store i32 %inc91, ptr %j, align 4, !tbaa !5
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %22 = load i32, ptr %sum, align 4, !tbaa !5
  %arrayidx93 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 1
  %arrayidx94 = getelementptr inbounds [105 x i32], ptr %arrayidx93, i64 0, i64 1
  %23 = load i32, ptr %arrayidx94, align 8, !tbaa !5
  %add = add nsw i32 %22, %23
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc114, %for.end92
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %24, %5
  br i1 %cmp96, label %for.body97, label %for.end116

for.body97:                                       ; preds = %for.cond95
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc111, %for.body97
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %sub99 = sub nsw i32 %5, 1
  %cmp100 = icmp slt i32 %25, %sub99
  br i1 %cmp100, label %for.inc111, label %for.inc114

for.inc111:                                       ; preds = %for.cond98
  %idxprom102 = sext i32 %24 to i64
  %arrayidx103 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom102
  %add104 = add nsw i32 %25, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [105 x i32], ptr %arrayidx103, i64 0, i64 %idxprom105
  %26 = load i32, ptr %arrayidx106, align 4, !tbaa !5, !invariant.load !19
  %idxprom109 = sext i32 %25 to i64
  %arrayidx110 = getelementptr inbounds [105 x i32], ptr %arrayidx103, i64 0, i64 %idxprom109
  store i32 %26, ptr %arrayidx110, align 4, !tbaa !5
  store i32 %add104, ptr %j, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !20

for.inc114:                                       ; preds = %for.cond98
  %inc115 = add nsw i32 %24, 1
  store i32 %inc115, ptr %i, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !21

for.end116:                                       ; preds = %for.cond95
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc136, %for.end116
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %27, %5
  br i1 %cmp118, label %for.body119, label %for.end138

for.body119:                                      ; preds = %for.cond117
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc133, %for.body119
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %sub121 = sub nsw i32 %5, 1
  %cmp122 = icmp slt i32 %28, %sub121
  br i1 %cmp122, label %for.inc133, label %for.inc136

for.inc133:                                       ; preds = %for.cond120
  %add124 = add nsw i32 %28, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom125
  %idxprom127 = sext i32 %27 to i64
  %arrayidx128 = getelementptr inbounds [105 x i32], ptr %arrayidx126, i64 0, i64 %idxprom127
  %29 = load i32, ptr %arrayidx128, align 4, !tbaa !5, !invariant.load !19
  %idxprom129 = sext i32 %28 to i64
  %arrayidx130 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom129
  %arrayidx132 = getelementptr inbounds [105 x i32], ptr %arrayidx130, i64 0, i64 %idxprom127
  store i32 %29, ptr %arrayidx132, align 4, !tbaa !5
  store i32 %add124, ptr %i, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !22

for.inc136:                                       ; preds = %for.cond120
  %inc137 = add nsw i32 %27, 1
  store i32 %inc137, ptr %j, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !23

for.end138:                                       ; preds = %for.cond117
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %while.cond11, !llvm.loop !24

while.end:                                        ; preds = %while.cond11
  %30 = load i32, ptr %sum, align 4, !tbaa !5
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %30)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec141 = add nsw i32 %.sink, -1
  br label %while.cond, !llvm.loop !25

while.end142:                                     ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
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
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !26
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !34
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !35
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !19
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !7, i64 56}
!27 = !{!"_ZTSSt5ctypeIcE", !28, i64 0, !29, i64 16, !31, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!28 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!29 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 int", !30, i64 0}
!33 = !{!"p1 short", !30, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !8, i64 0}
