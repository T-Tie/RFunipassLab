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

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %word = alloca [1000 x [41 x i8]], align 16
  %newword = alloca [1000 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #11
  call void @llvm.lifetime.start.p0(i64 noundef 41000, ptr noundef nonnull align 16 dereferenceable(41000) %word) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(41000) %word, i8 noundef 0, i64 noundef 41000, i1 noundef false) #12
  call void @llvm.lifetime.start.p0(i64 noundef 81000, ptr noundef align 16 %newword) #11
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %newword, i8 noundef 0, i64 noundef 81000, i1 noundef false) #12
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [41 x i8]], ptr %word, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %if.end73, %for.end
  %k.0 = phi i32 [ 0, %for.end ], [ %k.1, %if.end73 ]
  %j.0 = phi i32 [ 0, %for.end ], [ %j.1, %if.end73 ]
  %i.1 = phi i32 [ 0, %for.end ], [ %inc75, %if.end73 ]
  %cmp3 = icmp slt i32 %i.1, %0
  %idxprom77 = sext i32 %k.0 to i64
  br i1 %cmp3, label %for.body4, label %for.end76

for.body4:                                        ; preds = %for.cond2
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [1000 x [41 x i8]], ptr %word, i64 0, i64 %idxprom5
  %call8 = call i64 @strlen(ptr noundef %arrayidx6) #13
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 %j.0, %conv
  %cmp9 = icmp sgt i32 %add, 80
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %for.body4
  %arrayidx11 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %sub = sub nsw i32 %j.0, 1
  %idxprom12 = sext i32 %sub to i64
  %arrayidx13 = getelementptr inbounds [81 x i8], ptr %arrayidx11, i64 0, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1, !tbaa !12
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds [81 x i8], ptr %arrayidx11, i64 0, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1, !tbaa !12
  %inc18 = add nsw i32 %k.0, 1
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom19
  %call25 = call ptr @strcpy(ptr noundef %arrayidx20, ptr noundef %arrayidx6) #14
  br label %if.end73.gvnsink.split

if.else:                                          ; preds = %for.body4
  %cmp32 = icmp eq i32 %add, 80
  br i1 %cmp32, label %if.then33, label %if.else42

if.then33:                                        ; preds = %if.else
  %arrayidx35 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %call40 = call ptr @strcat(ptr noundef %arrayidx35, ptr noundef %arrayidx6) #14
  %inc41 = add nsw i32 %k.0, 1
  br label %if.end73

if.else42:                                        ; preds = %if.else
  %cmp43 = icmp eq i32 %j.0, 0
  br i1 %cmp43, label %if.then44, label %if.else58

if.then44:                                        ; preds = %if.else42
  %arrayidx46 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %call51 = call ptr @strcpy(ptr noundef %arrayidx46, ptr noundef %arrayidx6) #14
  br label %if.end73.gvnsink.split

if.else58:                                        ; preds = %if.else42
  %arrayidx60 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %call65 = call ptr @strcat(ptr noundef %arrayidx60, ptr noundef %arrayidx6) #14
  br label %if.end73.gvnsink.split

if.end73.gvnsink.split:                           ; preds = %if.then, %if.then44, %if.else58
  %add.sink1 = phi i32 [ %add, %if.else58 ], [ %conv, %if.then44 ], [ %conv, %if.then ]
  %arrayidx60.sink = phi ptr [ %arrayidx60, %if.else58 ], [ %arrayidx46, %if.then44 ], [ %arrayidx20, %if.then ]
  %k.1.ph = phi i32 [ %k.0, %if.then44 ], [ %k.0, %if.else58 ], [ %inc18, %if.then ]
  %idxprom69 = sext i32 %add.sink1 to i64
  %arrayidx70 = getelementptr inbounds [81 x i8], ptr %arrayidx60.sink, i64 0, i64 %idxprom69
  store i8 32, ptr %arrayidx70, align 1, !tbaa !12
  %inc71 = add nsw i32 %add.sink1, 1
  br label %if.end73

if.end73:                                         ; preds = %if.end73.gvnsink.split, %if.then33
  %k.1 = phi i32 [ %inc41, %if.then33 ], [ %k.1.ph, %if.end73.gvnsink.split ]
  %j.1 = phi i32 [ 0, %if.then33 ], [ %inc71, %if.end73.gvnsink.split ]
  %inc75 = add nsw i32 %i.1, 1
  br label %for.cond2, !llvm.loop !13

for.end76:                                        ; preds = %for.cond2
  %arrayidx78 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom77
  %sub79 = sub nsw i32 %j.0, 1
  %idxprom80 = sext i32 %sub79 to i64
  %arrayidx81 = getelementptr inbounds [81 x i8], ptr %arrayidx78, i64 0, i64 %idxprom80
  store i8 0, ptr %arrayidx81, align 1, !tbaa !12
  %idxprom84 = sext i32 %j.0 to i64
  %arrayidx85 = getelementptr inbounds [81 x i8], ptr %arrayidx78, i64 0, i64 %idxprom84
  store i8 0, ptr %arrayidx85, align 1, !tbaa !12
  br label %for.cond86

for.cond86:                                       ; preds = %for.end115, %for.end76
  %i.2 = phi i32 [ 0, %for.end76 ], [ %inc117, %for.end115 ]
  %cmp87 = icmp sle i32 %i.2, %k.0
  br i1 %cmp87, label %for.body88, label %for.end118

for.body88:                                       ; preds = %for.cond86
  %idxprom89 = sext i32 %i.2 to i64
  %arrayidx90 = getelementptr inbounds [1000 x [81 x i8]], ptr %newword, i64 0, i64 %idxprom89
  %call92 = call i64 @strlen(ptr noundef %arrayidx90) #13
  %conv93 = trunc i64 %call92 to i32
  br label %for.cond94

for.cond94:                                       ; preds = %if.end112, %for.body88
  %j.4 = phi i32 [ 0, %for.body88 ], [ %inc114, %if.end112 ]
  %cmp95 = icmp slt i32 %j.4, %conv93
  br i1 %cmp95, label %for.body96, label %for.end115

for.body96:                                       ; preds = %for.cond94
  %sub97 = sub nsw i32 %conv93, 1
  %cmp98 = icmp eq i32 %j.4, %sub97
  %idxprom102 = sext i32 %j.4 to i64
  %1 = getelementptr inbounds [81 x i8], ptr %arrayidx90, i64 0, i64 %idxprom102
  %2 = load i8, ptr %1, align 1, !tbaa !12
  br i1 %cmp98, label %if.then99, label %if.else106

if.then99:                                        ; preds = %for.body96
  %arrayidx103 = getelementptr inbounds [81 x i8], ptr %arrayidx90, i64 0, i64 %idxprom102
  %call104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  %call105 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call104, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end112

if.else106:                                       ; preds = %for.body96
  %arrayidx110 = getelementptr inbounds [81 x i8], ptr %arrayidx90, i64 0, i64 %idxprom102
  %call111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %2)
  br label %if.end112

if.end112:                                        ; preds = %if.else106, %if.then99
  %inc114 = add nsw i32 %j.4, 1
  br label %for.cond94, !llvm.loop !14

for.end115:                                       ; preds = %for.cond94
  %inc117 = add nsw i32 %i.2, 1
  br label %for.cond86, !llvm.loop !15

for.end118:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 81000, ptr noundef %newword) #14
  call void @llvm.lifetime.end.p0(i64 noundef 41000, ptr noundef %word) #14
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #14
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
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
  %vtable = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !18
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #14
  %vtable1 = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8, !invariant.load !18
  %add.ptr4 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !18
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #14
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %vtable12 = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8, !invariant.load !18
  %add.ptr15 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15) #14
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #14
  %vtable20 = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8, !invariant.load !18
  %add.ptr23 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23) #14
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #14
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #14
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #14
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %vtable29 = load ptr, ptr %__in, align 8, !tbaa !16
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8, !invariant.load !18
  %add.ptr32 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #14
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #9 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !19
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !19
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #9 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !19
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #9 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #9 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5
  %1 = load i32, ptr %__c2, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #9 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nofree nounwind willreturn }
attributes #12 = { nofree willreturn }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }

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
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{}
!19 = !{!20, !21, i64 16}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
