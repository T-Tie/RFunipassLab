; ModuleID = '/tmp/tmp33njbwyd.cpp'
source_filename = "/tmp/tmp33njbwyd.cpp"
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

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i14 = alloca i32, align 4
  %j19 = alloca i32, align 4
  %i35 = alloca i32, align 4
  %j40 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.start.p0(i64 48400, ptr %a) #7
  call void @llvm.lifetime.start.p0(i64 48400, ptr %b) #7
  call void @llvm.lifetime.start.p0(i64 48400, ptr %c) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %l, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  br label %for.end11

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #7
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %m, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond2
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  br label %for.end

for.body5:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [110 x i32], ptr %arrayidx, i64 0, i64 %idxprom6
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup4
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond.cleanup
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i14) #7
  store i32 0, ptr %i14, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc32, %for.end11
  %8 = load i32, ptr %i14, align 4, !tbaa !5
  %9 = load i32, ptr %m, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %8, %9
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i14) #7
  br label %for.end34

for.body18:                                       ; preds = %for.cond15
  call void @llvm.lifetime.start.p0(i64 4, ptr %j19) #7
  store i32 0, ptr %j19, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc29, %for.body18
  %10 = load i32, ptr %j19, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp slt i32 %10, %11
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j19) #7
  br label %for.end31

for.body23:                                       ; preds = %for.cond20
  %12 = load i32, ptr %i14, align 4, !tbaa !5
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [110 x [110 x i32]], ptr %b, i64 0, i64 %idxprom24
  %13 = load i32, ptr %j19, align 4, !tbaa !5
  %idxprom26 = sext i32 %13 to i64
  %arrayidx27 = getelementptr inbounds [110 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  br label %for.inc29

for.inc29:                                        ; preds = %for.body23
  %14 = load i32, ptr %j19, align 4, !tbaa !5
  %inc30 = add nsw i32 %14, 1
  store i32 %inc30, ptr %j19, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !13

for.end31:                                        ; preds = %for.cond.cleanup22
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %15 = load i32, ptr %i14, align 4, !tbaa !5
  %inc33 = add nsw i32 %15, 1
  store i32 %inc33, ptr %i14, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end34:                                        ; preds = %for.cond.cleanup17
  call void @llvm.lifetime.start.p0(i64 4, ptr %i35) #7
  store i32 0, ptr %i35, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc79, %for.end34
  %16 = load i32, ptr %i35, align 4, !tbaa !5
  %17 = load i32, ptr %l, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %16, %17
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond36
  store i32 14, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i35) #7
  br label %for.end81

for.body39:                                       ; preds = %for.cond36
  call void @llvm.lifetime.start.p0(i64 4, ptr %j40) #7
  store i32 0, ptr %j40, align 4, !tbaa !5
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc76, %for.body39
  %18 = load i32, ptr %j40, align 4, !tbaa !5
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %18, %19
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond41
  store i32 17, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j40) #7
  br label %for.end78

for.body44:                                       ; preds = %for.cond41
  %20 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom45 = sext i32 %20 to i64
  %arrayidx46 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom45
  %21 = load i32, ptr %j40, align 4, !tbaa !5
  %idxprom47 = sext i32 %21 to i64
  %arrayidx48 = getelementptr inbounds [110 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  store i32 0, ptr %arrayidx48, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #7
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc65, %for.body44
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %23 = load i32, ptr %m, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %22, %23
  br i1 %cmp50, label %for.body52, label %for.cond.cleanup51

for.cond.cleanup51:                               ; preds = %for.cond49
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  br label %for.end67

for.body52:                                       ; preds = %for.cond49
  %24 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom53 = sext i32 %24 to i64
  %arrayidx54 = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 %idxprom53
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom55 = sext i32 %25 to i64
  %arrayidx56 = getelementptr inbounds [110 x i32], ptr %arrayidx54, i64 0, i64 %idxprom55
  %26 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %27 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom57 = sext i32 %27 to i64
  %arrayidx58 = getelementptr inbounds [110 x [110 x i32]], ptr %b, i64 0, i64 %idxprom57
  %28 = load i32, ptr %j40, align 4, !tbaa !5
  %idxprom59 = sext i32 %28 to i64
  %arrayidx60 = getelementptr inbounds [110 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  %29 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %mul = mul nsw i32 %26, %29
  %30 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom61 = sext i32 %30 to i64
  %arrayidx62 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom61
  %31 = load i32, ptr %j40, align 4, !tbaa !5
  %idxprom63 = sext i32 %31 to i64
  %arrayidx64 = getelementptr inbounds [110 x i32], ptr %arrayidx62, i64 0, i64 %idxprom63
  %32 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %add = add nsw i32 %32, %mul
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  br label %for.inc65

for.inc65:                                        ; preds = %for.body52
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %inc66 = add nsw i32 %33, 1
  store i32 %inc66, ptr %k, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end67:                                        ; preds = %for.cond.cleanup51
  %34 = load i32, ptr %i35, align 4, !tbaa !5
  %idxprom68 = sext i32 %34 to i64
  %arrayidx69 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom68
  %35 = load i32, ptr %j40, align 4, !tbaa !5
  %idxprom70 = sext i32 %35 to i64
  %arrayidx71 = getelementptr inbounds [110 x i32], ptr %arrayidx69, i64 0, i64 %idxprom70
  %36 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36)
  %37 = load i32, ptr %j40, align 4, !tbaa !5
  %38 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %38, 1
  %cmp73 = icmp eq i32 %37, %sub
  br i1 %cmp73, label %if.then, label %if.else

if.then:                                          ; preds = %for.end67
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.else:                                          ; preds = %for.end67
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc76

for.inc76:                                        ; preds = %if.end
  %39 = load i32, ptr %j40, align 4, !tbaa !5
  %inc77 = add nsw i32 %39, 1
  store i32 %inc77, ptr %j40, align 4, !tbaa !5
  br label %for.cond41, !llvm.loop !16

for.end78:                                        ; preds = %for.cond.cleanup43
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  %40 = load i32, ptr %i35, align 4, !tbaa !5
  %inc80 = add nsw i32 %40, 1
  store i32 %inc80, ptr %i35, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !17

for.end81:                                        ; preds = %for.cond.cleanup38
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 48400, ptr %c) #7
  call void @llvm.lifetime.end.p0(i64 48400, ptr %b) #7
  call void @llvm.lifetime.end.p0(i64 48400, ptr %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #7
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !18
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !21
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !21
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %vtable = load ptr, ptr %1, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !18
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !26
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %vtable = load ptr, ptr %0, align 8, !tbaa !24
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !18
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !18, !nonnull !22, !align !23
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !45
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !45
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !26
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !46
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !26
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !26
  %vtable = load ptr, ptr %this1, align 8, !tbaa !24
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %4 = load ptr, ptr %vfn, align 8
  %call = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %this1, i8 noundef signext %3)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8, ptr %retval, align 1
  ret i8 %5
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #6 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !52
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !54
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTSSo", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{}
!23 = !{i64 8}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0}
!29 = !{!30, !42, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0, !19, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!31 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!32 = !{!"long", !7, i64 0}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !32, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!45 = !{!42, !42, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !40, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!50 = !{!"p1 int", !20, i64 0}
!51 = !{!"p1 short", !20, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTSSt8ios_base", !20, i64 0}
!54 = !{!31, !32, i64 16}
