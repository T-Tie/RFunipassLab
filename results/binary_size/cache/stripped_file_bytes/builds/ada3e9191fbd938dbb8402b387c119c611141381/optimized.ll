; ModuleID = '/tmp/tmpdxgu9zge.cpp'
source_filename = "/tmp/tmpdxgu9zge.cpp"
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i32], align 16
  %c = alloca [200 x [6 x i8]], align 16
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.start.p0(i64 501, ptr %a) #10
  %arraydecay = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef %arraydecay, i64 noundef 501)
  %arraydecay3 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #11
  %conv = trunc i64 %call4 to i32
  store i32 %conv, ptr %l, align 4, !tbaa !5
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2004, ptr %b) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, 501
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1200, ptr %c) #10
  call void @llvm.memset.p0.i64(ptr align 16 %c, i8 0, i64 1200, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc21, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %p, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body7, label %for.end23

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %for.body7
  %7 = load i32, ptr %t, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %7, %8
  br i1 %cmp9, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond8
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %t, align 4, !tbaa !5
  %add11 = add nsw i32 %9, %10
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom12
  %11 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [200 x [6 x i8]], ptr %c, i64 0, i64 %idxprom14
  %13 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [6 x i8], ptr %arrayidx15, i64 0, i64 %idxprom16
  store i8 %11, ptr %arrayidx17, align 1, !tbaa !12
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %14 = load i32, ptr %t, align 4, !tbaa !5
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, ptr %t, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !13

for.end20:                                        ; preds = %for.cond8
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !14

for.end23:                                        ; preds = %for.cond5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc57, %for.end23
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %p, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %16, %17
  br i1 %cmp25, label %for.body26, label %for.end59

for.body26:                                       ; preds = %for.cond24
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc54, %for.body26
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %p, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %18, %19
  br i1 %cmp28, label %for.body29, label %for.end56

for.body29:                                       ; preds = %for.cond27
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [200 x [6 x i8]], ptr %c, i64 0, i64 %idxprom30
  %arraydecay32 = getelementptr inbounds [6 x i8], ptr %arrayidx31, i64 0, i64 0
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [200 x [6 x i8]], ptr %c, i64 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [6 x i8], ptr %arrayidx34, i64 0, i64 0
  %call36 = call i32 @strcmp(ptr noundef %arraydecay32, ptr noundef %arraydecay35) #11
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body29
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom38
  %23 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp ne i32 %23, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end

land.lhs.true41:                                  ; preds = %land.lhs.true
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %cmp42 = icmp ne i32 %24, %25
  br i1 %cmp42, label %land.lhs.true43, label %if.end

land.lhs.true43:                                  ; preds = %land.lhs.true41
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom44 = sext i32 %26 to i64
  %arrayidx45 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom44
  %27 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp ne i32 %27, 0
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true43
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom47
  %29 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %add49 = add nsw i32 %29, 1
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom50 = sext i32 %30 to i64
  %arrayidx51 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom50
  store i32 %add49, ptr %arrayidx51, align 4, !tbaa !5
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %31 to i64
  %arrayidx53 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom52
  store i32 0, ptr %arrayidx53, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true43, %land.lhs.true41, %land.lhs.true, %for.body29
  br label %for.inc54

for.inc54:                                        ; preds = %if.end
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc55 = add nsw i32 %32, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !5
  br label %for.cond27, !llvm.loop !15

for.end56:                                        ; preds = %for.cond27
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc58 = add nsw i32 %33, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !16

for.end59:                                        ; preds = %for.cond24
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #10
  %arrayidx60 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 0
  %34 = load i32, ptr %arrayidx60, align 16, !tbaa !5
  store i32 %34, ptr %s, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc71, %for.end59
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %36 = load i32, ptr %p, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %35, %36
  br i1 %cmp62, label %for.body63, label %for.end73

for.body63:                                       ; preds = %for.cond61
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom64 = sext i32 %37 to i64
  %arrayidx65 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom64
  %38 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %39 = load i32, ptr %s, align 4, !tbaa !5
  %cmp66 = icmp sge i32 %38, %39
  br i1 %cmp66, label %if.then67, label %if.end70

if.then67:                                        ; preds = %for.body63
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom68 = sext i32 %40 to i64
  %arrayidx69 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom68
  %41 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  store i32 %41, ptr %s, align 4, !tbaa !5
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %for.body63
  br label %for.inc71

for.inc71:                                        ; preds = %if.end70
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %inc72 = add nsw i32 %42, 1
  store i32 %inc72, ptr %i, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !17

for.end73:                                        ; preds = %for.cond61
  %43 = load i32, ptr %s, align 4, !tbaa !5
  %cmp74 = icmp eq i32 %43, 1
  br i1 %cmp74, label %if.then75, label %if.else

if.then75:                                        ; preds = %for.end73
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call76, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end103

if.else:                                          ; preds = %for.end73
  %44 = load i32, ptr %s, align 4, !tbaa !5
  %call78 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %44)
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call78, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc100, %if.else
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %46 = load i32, ptr %p, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %45, %46
  br i1 %cmp81, label %for.body82, label %for.end102

for.body82:                                       ; preds = %for.cond80
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom83
  %48 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %49 = load i32, ptr %s, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %48, %49
  br i1 %cmp85, label %if.then86, label %if.end99

if.then86:                                        ; preds = %for.body82
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc95, %if.then86
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %51 = load i32, ptr %n, align 4, !tbaa !5
  %cmp88 = icmp slt i32 %50, %51
  br i1 %cmp88, label %for.body89, label %for.end97

for.body89:                                       ; preds = %for.cond87
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom90 = sext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds [200 x [6 x i8]], ptr %c, i64 0, i64 %idxprom90
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom92 = sext i32 %53 to i64
  %arrayidx93 = getelementptr inbounds [6 x i8], ptr %arrayidx91, i64 0, i64 %idxprom92
  %54 = load i8, ptr %arrayidx93, align 1, !tbaa !12
  %call94 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %54)
  br label %for.inc95

for.inc95:                                        ; preds = %for.body89
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %inc96 = add nsw i32 %55, 1
  store i32 %inc96, ptr %j, align 4, !tbaa !5
  br label %for.cond87, !llvm.loop !18

for.end97:                                        ; preds = %for.cond87
  %call98 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end99

if.end99:                                         ; preds = %for.end97, %for.body82
  br label %for.inc100

for.inc100:                                       ; preds = %if.end99
  %56 = load i32, ptr %i, align 4, !tbaa !5
  %inc101 = add nsw i32 %56, 1
  store i32 %inc101, ptr %i, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !19

for.end102:                                       ; preds = %for.cond80
  br label %if.end103

if.end103:                                        ; preds = %for.end102, %if.then75
  %call104 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call105 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %call106 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #10
  call void @llvm.lifetime.end.p0(i64 1200, ptr %c) #10
  call void @llvm.lifetime.end.p0(i64 2004, ptr %b) #10
  call void @llvm.lifetime.end.p0(i64 501, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  %__n.addr = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !20
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !25
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %1 = load i64, ptr %__n.addr, align 8, !tbaa !25
  %vtable = load ptr, ptr %this1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this1, ptr noundef %0, i64 noundef %1, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #6 {
entry:
  %__out.addr = alloca ptr, align 8
  %__s.addr = alloca ptr, align 8
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !29
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %3 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %4 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %4)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__pf.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !29
  store ptr %__pf, ptr %__pf.addr, align 8, !tbaa !33
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__pf.addr, align 8, !tbaa !33
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %0(ptr noundef nonnull align 8 dereferenceable(8) %this1)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %1 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %1, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #6 {
entry:
  %retval = alloca ptr, align 8
  %__out.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %__out, ptr %__out.addr, align 8, !tbaa !29
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %0 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %vtable = load ptr, ptr %0, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr)
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %3 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3)
  %4 = load ptr, ptr %__out.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  store ptr %4, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this1, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !36
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %1 = load i8, ptr %__c.addr, align 1, !tbaa !12
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %1)
  ret i8 %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #6 comdat {
entry:
  %__f.addr = alloca ptr, align 8
  store ptr %__f, ptr %__f.addr, align 8, !tbaa !51
  %0 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %__f.addr, align 8, !tbaa !51
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #3 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %this.addr = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8, !tbaa !51
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !12
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this1, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !52
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
declare void @_ZSt16__throw_bad_castv() #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #3 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__state.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  store i32 %__state, ptr %__state.addr, align 4, !tbaa !58
  %this1 = load ptr, ptr %this.addr, align 8
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this1)
  %0 = load i32, ptr %__state.addr, align 4, !tbaa !58
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %0)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this1, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #8 comdat align 2 {
entry:
  %__s.addr = alloca ptr, align 8
  store ptr %__s, ptr %__s.addr, align 8, !tbaa !23
  %0 = load ptr, ptr %__s.addr, align 8, !tbaa !23
  %call = call i64 @strlen(ptr noundef %0) #10
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #9 comdat {
entry:
  %__a.addr = alloca i32, align 4
  %__b.addr = alloca i32, align 4
  store i32 %__a, ptr %__a.addr, align 4, !tbaa !58
  store i32 %__b, ptr %__b.addr, align 4, !tbaa !58
  %0 = load i32, ptr %__a.addr, align 4, !tbaa !58
  %1 = load i32, ptr %__b.addr, align 4, !tbaa !58
  %or = or i32 %0, %1
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #8 align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !34
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !59
  ret i32 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %__os.addr = alloca ptr, align 8
  store ptr %__os, ptr %__os.addr, align 8, !tbaa !29
  %0 = load ptr, ptr %__os.addr, align 8, !tbaa !29, !nonnull !31, !align !32
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #8 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !60
  %this1 = load ptr, ptr %this.addr, align 8
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this1, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !62
  ret i64 %0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { noreturn }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTSSi", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p1 omnipotent char", !22, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"long", !7, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTSSo", !22, i64 0}
!31 = !{}
!32 = !{i64 8}
!33 = !{!22, !22, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0}
!36 = !{!37, !48, i64 240}
!37 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !38, i64 0, !30, i64 216, !7, i64 224, !46, i64 225, !47, i64 232, !48, i64 240, !49, i64 248, !50, i64 256}
!38 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !39, i64 24, !40, i64 28, !40, i64 32, !41, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!39 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!40 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!41 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !26, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!46 = !{!"bool", !7, i64 0}
!47 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!48 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!49 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!50 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!51 = !{!48, !48, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !46, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!56 = !{!"p1 int", !22, i64 0}
!57 = !{!"p1 short", !22, i64 0}
!58 = !{!40, !40, i64 0}
!59 = !{!38, !40, i64 32}
!60 = !{!61, !61, i64 0}
!61 = !{!"p1 _ZTSSt8ios_base", !22, i64 0}
!62 = !{!38, !26, i64 16}
