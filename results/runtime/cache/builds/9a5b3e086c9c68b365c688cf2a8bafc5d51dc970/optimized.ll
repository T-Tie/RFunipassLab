; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8_19d3ny.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE11to_int_typeERKc = comdat any

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
  %word = alloca [1000 x [41 x i8]], align 16
  %newword = alloca [1000 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #14
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #14
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #14
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull dereferenceable(41000) %word) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(41000) %word, i8 noundef 0, i64 noundef 41000, i1 noundef false) #15
  call void @llvm.lifetime.start.p0(i64 noundef 81000, ptr noundef align 16 %newword) #14
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %newword, i8 noundef 0, i64 noundef 81000, i1 noundef false) #15
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [41 x i8]], ptr %word, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull %arrayidx)
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end73, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %if.end73 ]
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end76

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [1000 x [41 x i8]], ptr %word, i64 0, i64 %idxprom5
  %call8 = call i64 @strlen(ptr noundef %arrayidx6) #16
  %conv = trunc i64 %call8 to i32
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %4, %conv
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %k.0 to i64
  %arrayidx11 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom10
  %sub = sub nsw i32 %4, 1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [81 x i8], ptr %arrayidx11, i64 0, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !9
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [81 x i8], ptr %arrayidx11, i64 0, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !9
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef %arrayidx20, ptr noundef %arrayidx6) #17
  store i32 %conv, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %conv to i64
  %arrayidx29 = getelementptr inbounds [81 x i8], ptr %arrayidx20, i64 0, i64 %idxprom28
  store i8 32, ptr %arrayidx29, align 1, !tbaa !9
  %inc30 = add nsw i32 %conv, 1
  store i32 %inc30, ptr %j, align 4, !tbaa !5
  br label %if.end73

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %idxprom34 = sext i32 %k.0 to i64
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom34
  %call40 = call ptr @strcat(ptr noundef %arrayidx35, ptr noundef %arrayidx6) #17
  %inc41 = add nsw i32 %k.0, 1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %if.end73

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %4, 0
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom45
  %call51 = call ptr @strcpy(ptr noundef %arrayidx46, ptr noundef %arrayidx6) #17
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add52 = add nsw i32 %5, %conv
  br label %if.end

if.else58:                                        ; preds = %if.else42
  %idxprom59 = sext i32 %k.0 to i64
  %arrayidx60 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom59
  %call65 = call ptr @strcat(ptr noundef %arrayidx60, ptr noundef %arrayidx6) #17
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %add66 = add nsw i32 %6, %conv
  br label %if.end

if.end:                                           ; preds = %if.else58, %if.then44
  %add66.sink2 = phi i32 [ %add66, %if.else58 ], [ %add52, %if.then44 ]
  %add66.sink1 = phi i32 [ %add66, %if.else58 ], [ %add52, %if.then44 ]
  %arrayidx60.sink = phi ptr [ %arrayidx60, %if.else58 ], [ %arrayidx46, %if.then44 ]
  %add66.sink = phi i32 [ %add66, %if.else58 ], [ %add52, %if.then44 ]
  store i32 %add66.sink2, ptr %j, align 4, !tbaa !5
  %idxprom69 = sext i32 %add66.sink1 to i64
  %arrayidx70 = getelementptr inbounds [81 x i8], ptr %arrayidx60.sink, i64 0, i64 %idxprom69
  store i8 32, ptr %arrayidx70, align 1, !tbaa !9
  %inc71 = add nsw i32 %add66.sink, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %if.end73

if.end73:                                         ; preds = %if.then33, %if.end, %if.then
  %k.1 = phi i32 [ %inc18, %if.then ], [ %inc41, %if.then33 ], [ %k.0, %if.end ]
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond2

for.end76:                                        ; preds = %for.cond2
  %idxprom77 = sext i32 %k.0 to i64
  %arrayidx78 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %sub79 = sub nsw i32 %7, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [81 x i8], ptr %arrayidx78, i64 0, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !9
  %idxprom84 = sext i32 %7 to i64
  %arrayidx85 = getelementptr inbounds [81 x i8], ptr %arrayidx78, i64 0, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !9
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond86

for.cond86:                                       ; preds = %for.end115, %for.end76
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp87 = icmp sle i32 %8, %k.0
  br i1 %cmp87, label %for.body88, label %for.end118

for.body88:                                       ; preds = %for.cond86
  %idxprom89 = sext i32 %8 to i64
  %arrayidx90 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom89
  %call92 = call i64 @strlen(ptr noundef %arrayidx90) #16
  %conv93 = trunc i64 %call92 to i32
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond94

for.cond94:                                       ; preds = %if.end112, %for.body88
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %cmp95 = icmp slt i32 %9, %conv93
  br i1 %cmp95, label %for.body96, label %for.end115

for.body96:                                       ; preds = %for.cond94
  %sub97 = sub nsw i32 %conv93, 1
  %cmp98 = icmp eq i32 %9, %sub97
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %10 to i64
  %arrayidx101 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom100
  %idxprom102 = sext i32 %9 to i64
  %arrayidx103 = getelementptr inbounds [81 x i8], ptr %arrayidx101, i64 0, i64 %idxprom102
  %11 = load i8, ptr %arrayidx103, align 1, !tbaa !9, !invariant.load !10
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %11)
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end112

if.else106:                                       ; preds = %for.body96
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom107 = sext i32 %12 to i64
  %arrayidx108 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom107
  %idxprom109 = sext i32 %9 to i64
  %arrayidx110 = getelementptr inbounds [81 x i8], ptr %arrayidx108, i64 0, i64 %idxprom109
  %13 = load i8, ptr %arrayidx110, align 1, !tbaa !9, !invariant.load !10
  %call111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %13)
  br label %if.end112

if.end112:                                        ; preds = %if.else106, %if.then99
  call fastcc void @outlined_ir_func_0(ptr %j)
  br label %for.cond94

for.end115:                                       ; preds = %for.cond94
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond86

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 81000, ptr noundef %newword) #17
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef %word) #17
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #17
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #17
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #17
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #4 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !11, !invariant.load !10
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !10
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #17
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !11, !invariant.load !10
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !10
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #17
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #17
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #17
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #17
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #17
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #17
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #17
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #17
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) local_unnamed_addr #4 {
entry:
  %__c.addr = alloca i8, align 1
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !9
  %vtable = load ptr, ptr %__out, align 8, !tbaa !11, !invariant.load !10
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !10
  %add.ptr = getelementptr inbounds i8, ptr %__out, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr) #17
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__c.addr, i64 noundef 1)
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1, !tbaa !9
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ %__out, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #7 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #4 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !11, !invariant.load !10
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !10
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #9 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !13, !invariant.load !10
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !13
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) local_unnamed_addr #7 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #17
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %__state) #17
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %call2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #9 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !13, !invariant.load !10
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #9 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #17
  %cmp = icmp eq i32 %call, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #9 align 2 {
entry:
  %_M_streambuf = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 4
  %0 = load ptr, ptr %_M_streambuf, align 8, !tbaa !24, !invariant.load !10
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #7 align 2 {
entry:
  %call = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #17
  %call2 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #17
  %cmp = icmp ult ptr %call, %call2
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call3 = call noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) #17
  %call4 = call noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %call3) #17
  br label %if.end

if.else:                                          ; preds = %entry
  %vtable = load ptr, ptr %this, align 8, !tbaa !11, !invariant.load !10
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 9
  %0 = load ptr, ptr %vfn, align 8, !invariant.load !10
  %call5 = call noundef i32 %0(ptr noundef nonnull align 8 dereferenceable(64) %this)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %__ret.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.else ]
  ret i32 %__ret.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #9 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5, !invariant.load !10
  %1 = load i32, ptr %__c2, align 4, !tbaa !5, !invariant.load !10
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #9 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #11 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) local_unnamed_addr #9 align 2 {
entry:
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !32, !invariant.load !10
  ret i32 %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #9 align 2 {
entry:
  %_M_in_cur = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this, i32 0, i32 2
  %0 = load ptr, ptr %_M_in_cur, align 8, !tbaa !33, !invariant.load !10
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64) %this) local_unnamed_addr #9 align 2 {
entry:
  %_M_in_end = getelementptr inbounds nuw %"class.std::basic_streambuf", ptr %this, i32 0, i32 3
  %0 = load ptr, ptr %_M_in_end, align 8, !tbaa !36, !invariant.load !10
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) local_unnamed_addr #9 comdat align 2 {
entry:
  %0 = load i8, ptr %__c, align 1, !tbaa !9, !invariant.load !10
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #4 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #7 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !37, !invariant.load !10
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #18
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !38, !invariant.load !10
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !11, !invariant.load !10
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !10
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #12

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #13 {
for.cond.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nofree }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !7, i64 64, !6, i64 192, !21, i64 200, !22, i64 208}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !7, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!22 = !{!"_ZTSSt6locale", !23, i64 0}
!23 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!24 = !{!25, !28, i64 232}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !26, i64 216, !7, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !19, i64 0}
!27 = !{!"bool", !7, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!32 = !{!14, !17, i64 32}
!33 = !{!34, !35, i64 16}
!34 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !22, i64 56}
!35 = !{!"p1 omnipotent char", !19, i64 0}
!36 = !{!34, !35, i64 24}
!37 = !{!25, !29, i64 240}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !27, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!42 = !{!"p1 int", !19, i64 0}
!43 = !{!"p1 short", !19, i64 0}
