; ModuleID = '/tmp/tmpcsvu213f.cpp'
source_filename = "/tmp/tmpcsvu213f.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

@n = dso_local global i32 0, align 4
@num = dso_local global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z6searchPA5_ci(ptr noundef %s, i32 noundef %j) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %j.addr = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !5
  store i32 %j, ptr %j.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #9
  store i32 0, ptr %count, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %j.addr, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %3 = load i32, ptr %j.addr, align 4, !tbaa !10
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i8], ptr %2, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [5 x i8], ptr %arrayidx, i64 0, i64 0
  %4 = load i8, ptr %arrayidx1, align 1, !tbaa !12
  %conv = sext i8 %4 to i32
  %5 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [5 x i8], ptr %5, i64 %idxprom2
  %arrayidx4 = getelementptr inbounds [5 x i8], ptr %arrayidx3, i64 0, i64 0
  %7 = load i8, ptr %arrayidx4, align 1, !tbaa !12
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv, %conv5
  br i1 %cmp6, label %if.then, label %if.end28

if.then:                                          ; preds = %for.body
  store i32 1, ptr %count, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #9
  store i32 1, ptr %x, align 4, !tbaa !10
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %if.then
  %8 = load i32, ptr %x, align 4, !tbaa !10
  %9 = load i32, ptr @n, align 4, !tbaa !10
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond7
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #9
  br label %for.end

for.body10:                                       ; preds = %for.cond7
  %10 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %11 = load i32, ptr %j.addr, align 4, !tbaa !10
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [5 x i8], ptr %10, i64 %idxprom11
  %12 = load i32, ptr %x, align 4, !tbaa !10
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [5 x i8], ptr %arrayidx12, i64 0, i64 %idxprom13
  %13 = load i8, ptr %arrayidx14, align 1, !tbaa !12
  %conv15 = sext i8 %13 to i32
  %14 = load ptr, ptr %s.addr, align 8, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [5 x i8], ptr %14, i64 %idxprom16
  %16 = load i32, ptr %x, align 4, !tbaa !10
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [5 x i8], ptr %arrayidx17, i64 0, i64 %idxprom18
  %17 = load i8, ptr %arrayidx19, align 1, !tbaa !12
  %conv20 = sext i8 %17 to i32
  %cmp21 = icmp ne i32 %conv15, %conv20
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %for.body10
  store i32 0, ptr %count, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then22, %for.body10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %x, align 4, !tbaa !10
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %x, align 4, !tbaa !10
  br label %for.cond7, !llvm.loop !13

for.end:                                          ; preds = %for.cond.cleanup9
  %19 = load i32, ptr %count, align 4, !tbaa !10
  %cmp23 = icmp eq i32 %19, 0
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end
  br label %for.inc29

if.else:                                          ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !10
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end28:                                         ; preds = %for.body
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28, %if.then24
  %22 = load i32, ptr %i, align 4, !tbaa !10
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !16

cleanup:                                          ; preds = %if.else, %for.cond.cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup35 [
    i32 2, label %for.end31
  ]

for.end31:                                        ; preds = %cleanup
  %23 = load i32, ptr %j.addr, align 4, !tbaa !10
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom32
  %24 = load i32, ptr %arrayidx33, align 4, !tbaa !10
  %inc34 = add nsw i32 %24, 1
  store i32 %inc34, ptr %arrayidx33, align 4, !tbaa !10
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup35

cleanup35:                                        ; preds = %for.end31, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #9
  %cleanup.dest36 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest36, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup35, %cleanup35
  ret void

unreachable:                                      ; preds = %cleanup35
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [200 x [5 x i8]], align 16
  %c = alloca [500 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %x = alloca i32, align 4
  %max = alloca i32, align 4
  %j20 = alloca i32, align 4
  %j41 = alloca i32, align 4
  %x52 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 1000, ptr %s) #9
  call void @llvm.lifetime.start.p0(i64 500, ptr %c) #9
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !12
  %conv3 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv3, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #9
  store i32 1, ptr %j, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %while.end
  %2 = load i32, ptr %j, align 4, !tbaa !10
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %4 = load i32, ptr @n, align 4, !tbaa !10
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  %cmp4 = icmp sle i32 %2, %add
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #9
  br label %for.end19

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #9
  store i32 0, ptr %x, align 4, !tbaa !10
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %5 = load i32, ptr %x, align 4, !tbaa !10
  %6 = load i32, ptr @n, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 7, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #9
  br label %for.end

for.body8:                                        ; preds = %for.cond5
  %7 = load i32, ptr %j, align 4, !tbaa !10
  %8 = load i32, ptr %x, align 4, !tbaa !10
  %add9 = add nsw i32 %7, %8
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom10
  %9 = load i8, ptr %arrayidx11, align 1, !tbaa !12
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [200 x [5 x i8]], ptr %s, i64 0, i64 %idxprom12
  %11 = load i32, ptr %x, align 4, !tbaa !10
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [5 x i8], ptr %arrayidx13, i64 0, i64 %idxprom14
  store i8 %9, ptr %arrayidx15, align 1, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %12 = load i32, ptr %x, align 4, !tbaa !10
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, ptr %x, align 4, !tbaa !10
  br label %for.cond5, !llvm.loop !18

for.end:                                          ; preds = %for.cond.cleanup7
  %arraydecay = getelementptr inbounds [200 x [5 x i8]], ptr %s, i64 0, i64 0
  %13 = load i32, ptr %j, align 4, !tbaa !10
  call void @_Z6searchPA5_ci(ptr noundef %arraydecay, i32 noundef %13)
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %14 = load i32, ptr %j, align 4, !tbaa !10
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, ptr %j, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !19

for.end19:                                        ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #9
  store i32 0, ptr %max, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j20) #9
  store i32 1, ptr %j20, align 4, !tbaa !10
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.end19
  %15 = load i32, ptr %j20, align 4, !tbaa !10
  %16 = load i32, ptr %i, align 4, !tbaa !10
  %17 = load i32, ptr @n, align 4, !tbaa !10
  %sub22 = sub nsw i32 %16, %17
  %add23 = add nsw i32 %sub22, 1
  %cmp24 = icmp sle i32 %15, %add23
  br i1 %cmp24, label %for.body26, label %for.cond.cleanup25

for.cond.cleanup25:                               ; preds = %for.cond21
  store i32 10, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j20) #9
  br label %for.end34

for.body26:                                       ; preds = %for.cond21
  %18 = load i32, ptr %j20, align 4, !tbaa !10
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom27
  %19 = load i32, ptr %arrayidx28, align 4, !tbaa !10
  %20 = load i32, ptr %max, align 4, !tbaa !10
  %cmp29 = icmp sgt i32 %19, %20
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body26
  %21 = load i32, ptr %j20, align 4, !tbaa !10
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom30
  %22 = load i32, ptr %arrayidx31, align 4, !tbaa !10
  store i32 %22, ptr %max, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body26
  br label %for.inc32

for.inc32:                                        ; preds = %if.end
  %23 = load i32, ptr %j20, align 4, !tbaa !10
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, ptr %j20, align 4, !tbaa !10
  br label %for.cond21, !llvm.loop !20

for.end34:                                        ; preds = %for.cond.cleanup25
  %24 = load i32, ptr %max, align 4, !tbaa !10
  %cmp35 = icmp eq i32 %24, 1
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %for.end34
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call37, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end70

if.else:                                          ; preds = %for.end34
  %25 = load i32, ptr %max, align 4, !tbaa !10
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %25)
  %call40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call39, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.start.p0(i64 4, ptr %j41) #9
  store i32 1, ptr %j41, align 4, !tbaa !10
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc67, %if.else
  %26 = load i32, ptr %j41, align 4, !tbaa !10
  %27 = load i32, ptr %i, align 4, !tbaa !10
  %28 = load i32, ptr @n, align 4, !tbaa !10
  %sub43 = sub nsw i32 %27, %28
  %add44 = add nsw i32 %sub43, 1
  %cmp45 = icmp slt i32 %26, %add44
  br i1 %cmp45, label %for.body47, label %for.cond.cleanup46

for.cond.cleanup46:                               ; preds = %for.cond42
  store i32 13, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j41) #9
  br label %for.end69

for.body47:                                       ; preds = %for.cond42
  %29 = load i32, ptr %j41, align 4, !tbaa !10
  %idxprom48 = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %idxprom48
  %30 = load i32, ptr %arrayidx49, align 4, !tbaa !10
  %31 = load i32, ptr %max, align 4, !tbaa !10
  %cmp50 = icmp eq i32 %30, %31
  br i1 %cmp50, label %if.then51, label %if.end65

if.then51:                                        ; preds = %for.body47
  call void @llvm.lifetime.start.p0(i64 4, ptr %x52) #9
  store i32 0, ptr %x52, align 4, !tbaa !10
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc62, %if.then51
  %32 = load i32, ptr %x52, align 4, !tbaa !10
  %33 = load i32, ptr @n, align 4, !tbaa !10
  %cmp54 = icmp slt i32 %32, %33
  br i1 %cmp54, label %for.body56, label %for.cond.cleanup55

for.cond.cleanup55:                               ; preds = %for.cond53
  store i32 16, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %x52) #9
  br label %for.end64

for.body56:                                       ; preds = %for.cond53
  %34 = load i32, ptr %j41, align 4, !tbaa !10
  %idxprom57 = sext i32 %34 to i64
  %arrayidx58 = getelementptr inbounds [200 x [5 x i8]], ptr %s, i64 0, i64 %idxprom57
  %35 = load i32, ptr %x52, align 4, !tbaa !10
  %idxprom59 = sext i32 %35 to i64
  %arrayidx60 = getelementptr inbounds [5 x i8], ptr %arrayidx58, i64 0, i64 %idxprom59
  %36 = load i8, ptr %arrayidx60, align 1, !tbaa !12
  %call61 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %36)
  br label %for.inc62

for.inc62:                                        ; preds = %for.body56
  %37 = load i32, ptr %x52, align 4, !tbaa !10
  %inc63 = add nsw i32 %37, 1
  store i32 %inc63, ptr %x52, align 4, !tbaa !10
  br label %for.cond53, !llvm.loop !21

for.end64:                                        ; preds = %for.cond.cleanup55
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %for.body47
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc67

for.inc67:                                        ; preds = %if.end65
  %38 = load i32, ptr %j41, align 4, !tbaa !10
  %inc68 = add nsw i32 %38, 1
  store i32 %inc68, ptr %j41, align 4, !tbaa !10
  br label %for.cond42, !llvm.loop !22

for.end69:                                        ; preds = %for.cond.cleanup46
  br label %if.end70

if.end70:                                         ; preds = %for.end69, %if.then36
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9
  call void @llvm.lifetime.end.p0(i64 500, ptr %c) #9
  call void @llvm.lifetime.end.p0(i64 1000, ptr %s) #9
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !23
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !23
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
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !23
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %vtable = load ptr, ptr %0, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !32
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !32
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #0 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !5
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !5
  %call = call i64 @strlen(ptr noundef %0) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !32
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !32
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !32
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !32
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #0 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !23, !nonnull !25, !align !26
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #5 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !30
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !43
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #4 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !50
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !50
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !50
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #5 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !50
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !51
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 9
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %idxprom = zext i8 %1 to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !12
  store i8 %2, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this1)
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
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
declare void @_ZSt16__throw_bad_castv() #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #0 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !57
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !59
  ret i64 %0
}

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = distinct !{!17, !14, !15}
!18 = distinct !{!18, !14, !15}
!19 = distinct !{!19, !14, !15}
!20 = distinct !{!20, !14, !15}
!21 = distinct !{!21, !14, !15}
!22 = distinct !{!22, !14, !15}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 _ZTSSo", !7, i64 0}
!25 = !{}
!26 = !{i64 8}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !9, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !7, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!34 = !{!35, !33, i64 32}
!35 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !37, i64 24, !33, i64 28, !33, i64 32, !38, i64 40, !39, i64 48, !8, i64 64, !11, i64 192, !40, i64 200, !41, i64 208}
!36 = !{!"long", !8, i64 0}
!37 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !7, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !7, i64 0, !36, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !7, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !7, i64 0}
!43 = !{!44, !47, i64 240}
!44 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !35, i64 0, !24, i64 216, !8, i64 224, !45, i64 225, !46, i64 232, !47, i64 240, !48, i64 248, !49, i64 256}
!45 = !{!"bool", !8, i64 0}
!46 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !7, i64 0}
!47 = !{!"p1 _ZTSSt5ctypeIcE", !7, i64 0}
!48 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!49 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !7, i64 0}
!50 = !{!47, !47, i64 0}
!51 = !{!52, !8, i64 56}
!52 = !{!"_ZTSSt5ctypeIcE", !53, i64 0, !54, i64 16, !45, i64 24, !55, i64 32, !55, i64 40, !56, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!53 = !{!"_ZTSNSt6locale5facetE", !11, i64 8}
!54 = !{!"p1 _ZTS15__locale_struct", !7, i64 0}
!55 = !{!"p1 int", !7, i64 0}
!56 = !{!"p1 short", !7, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"p1 _ZTSSt8ios_base", !7, i64 0}
!59 = !{!35, !36, i64 16}
