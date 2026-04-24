; ModuleID = '/tmp/tmpqgqmp_si.cpp'
source_filename = "/tmp/tmpqgqmp_si.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

@n = dso_local global i32 0, align 4
@str = dso_local global [501 x i8] zeroinitializer, align 16
@sumstr = dso_local global [499 x i32] zeroinitializer, align 16
@flagstr = dso_local global [499 x i32] zeroinitializer, align 16
@len = dso_local global i32 0, align 4
@maximum = dso_local global i32 -2147483648, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef @str, i64 noundef 501)
  %call3 = call i64 @strlen(ptr noundef @str) #9
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr @len, align 4, !tbaa !5
  call void @_Z3expi(i32 noundef 0)
  %0 = load i32, ptr @maximum, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call4, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_Z4pickv()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !9
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !12
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !12
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !14
  %vtable = load ptr, ptr %this1, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3expi(i32 noundef %a) #2 {
entry:
  %a.addr = alloca i32, align 4
  %q = alloca ptr, align 8
  %flag = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  %0 = load i32, ptr %a.addr, align 4, !tbaa !5
  %1 = load i32, ptr @len, align 4, !tbaa !5
  %2 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, %2
  %add = add nsw i32 %sub, 1
  %cmp = icmp eq i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10
  store ptr null, ptr %q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #10
  %3 = load i32, ptr %a.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr @sumstr, i64 %idx.ext
  store ptr %add.ptr, ptr %q, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  %4 = load i32, ptr %a.addr, align 4, !tbaa !5
  store i32 %4, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr @len, align 4, !tbaa !5
  %7 = load i32, ptr @n, align 4, !tbaa !5
  %sub1 = sub nsw i32 %6, %7
  %cmp2 = icmp sle i32 %5, %sub1
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  br label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr @n, align 4, !tbaa !5
  %sub4 = sub nsw i32 %9, 1
  %cmp5 = icmp sle i32 %8, %sub4
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body7:                                        ; preds = %for.cond3
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext8 = sext i32 %10 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr @str, i64 %idx.ext8
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %11 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext10
  %12 = load i8, ptr %add.ptr11, align 1, !tbaa !20
  %conv = sext i8 %12 to i32
  %13 = load i32, ptr %a.addr, align 4, !tbaa !5
  %idx.ext12 = sext i32 %13 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr @str, i64 %idx.ext12
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext14 = sext i32 %14 to i64
  %add.ptr15 = getelementptr inbounds i8, ptr %add.ptr13, i64 %idx.ext14
  %15 = load i8, ptr %add.ptr15, align 1, !tbaa !20
  %conv16 = sext i8 %15 to i32
  %cmp17 = icmp eq i32 %conv, %conv16
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %for.body7
  %16 = load i32, ptr %flag, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %flag, align 4, !tbaa !5
  br label %if.end19

if.else:                                          ; preds = %for.body7
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end19:                                         ; preds = %if.then18
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !21

cleanup:                                          ; preds = %if.else, %for.cond.cleanup6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  br label %for.end

for.end:                                          ; preds = %cleanup
  %18 = load i32, ptr %flag, align 4, !tbaa !5
  %19 = load i32, ptr @n, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %18, %19
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %20 = load ptr, ptr %q, align 8, !tbaa !18
  %21 = load i32, ptr %20, align 4, !tbaa !5
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, ptr %20, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %22, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end28:                                        ; preds = %for.cond.cleanup
  %23 = load ptr, ptr %q, align 8, !tbaa !18
  %24 = load i32, ptr %23, align 4, !tbaa !5
  %25 = load i32, ptr @maximum, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %24, %25
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end28
  %26 = load ptr, ptr %q, align 8, !tbaa !18
  %27 = load i32, ptr %26, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.end28
  %28 = load i32, ptr @maximum, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ]
  store i32 %cond, ptr @maximum, align 4, !tbaa !5
  %29 = load i32, ptr %a.addr, align 4, !tbaa !5
  %add30 = add nsw i32 %29, 1
  call void @_Z3expi(i32 noundef %add30)
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !25
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !12
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %vtable = load ptr, ptr %1, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !12
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !12
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !25
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !29
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !29
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %vtable = load ptr, ptr %1, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4pickv() #2 {
entry:
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10
  store ptr null, ptr %p, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #10
  store ptr null, ptr %q, align 8, !tbaa !18
  store ptr @str, ptr %p, align 8, !tbaa !12
  store ptr @sumstr, ptr %q, align 8, !tbaa !18
  %0 = load i32, ptr @maximum, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr @len, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %3
  %cmp = icmp sle i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  br label %for.end16

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %q, align 8, !tbaa !18
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %idx.ext
  %6 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %7 = load i32, ptr @maximum, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.then
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr @n, align 4, !tbaa !5
  %sub4 = sub nsw i32 %9, 1
  %cmp5 = icmp sle i32 %8, %sub4
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  br label %for.end

for.body7:                                        ; preds = %for.cond3
  %10 = load ptr, ptr %p, align 8, !tbaa !12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext8 = sext i32 %11 to i64
  %add.ptr9 = getelementptr inbounds i8, ptr %10, i64 %idx.ext8
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idx.ext10 = sext i32 %12 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr9, i64 %idx.ext10
  %13 = load i8, ptr %add.ptr11, align 1, !tbaa !20
  %call12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !30

for.end:                                          ; preds = %for.cond.cleanup6
  %call13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !31

for.end16:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !25
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !20
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %vtable = load ptr, ptr %0, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !20
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !20
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !34
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !20
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !49
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !49
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !20
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !50
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !20
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !20
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !20
  %vtable = load ptr, ptr %this1, align 8, !tbaa !16
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
declare void @_ZSt16__throw_bad_castv() #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #1

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #2 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !55
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !55
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #7 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !12
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !12
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !55
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !55
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !55
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !55
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #7 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !56
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !25
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !25, !nonnull !27, !align !28
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !57
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !59
  ret i64 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSSi", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 int", !11, i64 0}
!20 = !{!7, !7, i64 0}
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !22, !23}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTSSo", !11, i64 0}
!27 = !{}
!28 = !{i64 8}
!29 = !{!11, !11, i64 0}
!30 = distinct !{!30, !22, !23}
!31 = distinct !{!31, !22, !23}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !11, i64 0}
!34 = !{!35, !46, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !26, i64 216, !7, i64 224, !44, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!36 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !37, i64 24, !38, i64 28, !38, i64 32, !39, i64 40, !40, i64 48, !7, i64 64, !6, i64 192, !41, i64 200, !42, i64 208}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!38 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!39 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!40 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !15, i64 8}
!41 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!42 = !{!"_ZTSSt6locale", !43, i64 0}
!43 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!49 = !{!46, !46, i64 0}
!50 = !{!51, !7, i64 56}
!51 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !44, i64 24, !19, i64 32, !19, i64 40, !54, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!52 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!54 = !{!"p1 short", !11, i64 0}
!55 = !{!38, !38, i64 0}
!56 = !{!36, !38, i64 32}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSSt8ios_base", !11, i64 0}
!59 = !{!36, !15, i64 16}
