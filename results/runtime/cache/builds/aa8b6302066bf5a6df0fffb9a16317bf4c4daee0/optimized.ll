; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeqoia8si.cpp"
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
  %word = alloca [500 x [81 x i8]], align 16
  %text = alloca [500 x [81 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #10
  call void @llvm.lifetime.start.p0(i64 noundef 40500, ptr noundef nonnull align 16 dereferenceable(40500) %word) #10
  call void @llvm.lifetime.start.p0(i64 noundef 40500, ptr noundef align 16 %text) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 80, %for.end ], [ %dec, %for.inc9 ]
  %sub = sub nsw i32 %0, 1
  %idxprom3 = sext i32 %sub to i64
  %arrayidx4 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom3
  %idxprom5 = sext i32 %i.1 to i64
  %arrayidx6 = getelementptr inbounds [81 x i8], ptr %arrayidx4, i64 0, i64 %idxprom5
  %1 = load i8, ptr %arrayidx6, align 1, !tbaa !12
  %conv = sext i8 %1 to i32
  %cmp7 = icmp eq i32 %conv, 0
  br i1 %cmp7, label %for.inc9, label %for.end10

for.inc9:                                         ; preds = %for.cond2
  %dec = add nsw i32 %i.1, -1
  br label %for.cond2, !llvm.loop !13

for.end10:                                        ; preds = %for.cond2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end10
  %i.2 = phi i32 [ %i.1, %for.end10 ], [ %dec26, %for.inc25 ]
  %idxprom15 = sext i32 %i.2 to i64
  %arrayidx16 = getelementptr inbounds [81 x i8], ptr %arrayidx4, i64 0, i64 %idxprom15
  %2 = load i8, ptr %arrayidx16, align 1, !tbaa !12
  %conv17 = sext i8 %2 to i32
  %cmp18 = icmp eq i32 %conv17, 32
  br i1 %cmp18, label %for.inc25, label %for.end27

for.inc25:                                        ; preds = %for.cond11
  store i8 0, ptr %arrayidx16, align 1, !tbaa !12
  %dec26 = add nsw i32 %i.2, -1
  br label %for.cond11, !llvm.loop !14

for.end27:                                        ; preds = %for.cond11
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc41, %for.end27
  %i.3 = phi i32 [ 0, %for.end27 ], [ %inc42, %for.inc41 ]
  %cmp29 = icmp slt i32 %i.3, 500
  br i1 %cmp29, label %for.body30, label %for.end43

for.body30:                                       ; preds = %for.cond28
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc38, %for.body30
  %j.0 = phi i32 [ 0, %for.body30 ], [ %inc39, %for.inc38 ]
  %cmp32 = icmp slt i32 %j.0, 81
  br i1 %cmp32, label %for.inc38, label %for.inc41

for.inc38:                                        ; preds = %for.cond31
  %idxprom34 = sext i32 %i.3 to i64
  %arrayidx35 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom34
  %idxprom36 = sext i32 %j.0 to i64
  %arrayidx37 = getelementptr inbounds [81 x i8], ptr %arrayidx35, i64 0, i64 %idxprom36
  store i8 0, ptr %arrayidx37, align 1, !tbaa !12
  %inc39 = add nsw i32 %j.0, 1
  br label %for.cond31, !llvm.loop !15

for.inc41:                                        ; preds = %for.cond31
  %inc42 = add nsw i32 %i.3, 1
  br label %for.cond28, !llvm.loop !16

for.end43:                                        ; preds = %for.cond28
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc93, %for.end43
  %j.1 = phi i32 [ 0, %for.end43 ], [ %j.2, %for.inc93 ]
  %i.4 = phi i32 [ 0, %for.end43 ], [ %inc94, %for.inc93 ]
  %len.0 = phi i32 [ 0, %for.end43 ], [ %len.2, %for.inc93 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp45 = icmp slt i32 %i.4, %3
  br i1 %cmp45, label %for.body46, label %for.end95

for.body46:                                       ; preds = %for.cond44
  %idxprom47 = sext i32 %i.4 to i64
  %arrayidx48 = getelementptr inbounds [500 x [81 x i8]], ptr %word, i64 0, i64 %idxprom47
  %call50 = call i64 @strlen(ptr noundef %arrayidx48) #11
  %conv51 = sext i32 %len.0 to i64
  %add = add i64 %call50, %conv51
  %cmp52 = icmp ule i64 %add, 80
  %idxprom60 = sext i32 %j.1 to i64
  br i1 %cmp52, label %if.then, label %if.else

if.then:                                          ; preds = %for.body46
  %conv59 = trunc i64 %add to i32
  %arrayidx61 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60
  %call66 = call ptr @strcat(ptr noundef %arrayidx61, ptr noundef %arrayidx48) #12
  %cmp67 = icmp slt i32 %conv59, 80
  br i1 %cmp67, label %land.lhs.true, label %for.inc93

land.lhs.true:                                    ; preds = %if.then
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %sub68 = sub nsw i32 %4, 1
  %cmp69 = icmp slt i32 %i.4, %sub68
  br i1 %cmp69, label %if.then70, label %for.inc93

if.then70:                                        ; preds = %land.lhs.true
  %idxprom73 = sext i32 %conv59 to i64
  %arrayidx74 = getelementptr inbounds [81 x i8], ptr %arrayidx61, i64 0, i64 %idxprom73
  store i8 32, ptr %arrayidx74, align 1, !tbaa !12
  %add75 = add nsw i32 %conv59, 1
  br label %for.inc93

if.else:                                          ; preds = %for.body46
  %arrayidx77 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom60
  %sub78 = sub nsw i32 %len.0, 1
  %idxprom79 = sext i32 %sub78 to i64
  %arrayidx80 = getelementptr inbounds [81 x i8], ptr %arrayidx77, i64 0, i64 %idxprom79
  %5 = load i8, ptr %arrayidx80, align 1, !tbaa !12
  %conv81 = sext i8 %5 to i32
  %cmp82 = icmp eq i32 %conv81, 32
  br i1 %cmp82, label %if.then83, label %if.end89

if.then83:                                        ; preds = %if.else
  store i8 0, ptr %arrayidx80, align 1, !tbaa !12
  br label %if.end89

if.end89:                                         ; preds = %if.then83, %if.else
  %inc90 = add nsw i32 %j.1, 1
  %sub91 = sub nsw i32 %i.4, 1
  br label %for.inc93

for.inc93:                                        ; preds = %if.end89, %if.then70, %land.lhs.true, %if.then
  %j.2 = phi i32 [ %inc90, %if.end89 ], [ %j.1, %if.then70 ], [ %j.1, %land.lhs.true ], [ %j.1, %if.then ]
  %i.5 = phi i32 [ %sub91, %if.end89 ], [ %i.4, %if.then70 ], [ %i.4, %land.lhs.true ], [ %i.4, %if.then ]
  %len.2 = phi i32 [ 0, %if.end89 ], [ %add75, %if.then70 ], [ %conv59, %land.lhs.true ], [ %conv59, %if.then ]
  %inc94 = add nsw i32 %i.5, 1
  br label %for.cond44, !llvm.loop !17

for.end95:                                        ; preds = %for.cond44
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %for.end95
  %i.6 = phi i32 [ 0, %for.end95 ], [ %inc109, %for.inc108 ]
  %idxprom97 = sext i32 %i.6 to i64
  %arrayidx98 = getelementptr inbounds [500 x [81 x i8]], ptr %text, i64 0, i64 %idxprom97
  %6 = load i8, ptr %arrayidx98, align 1, !tbaa !12
  %conv100 = sext i8 %6 to i32
  %cmp101 = icmp ne i32 %conv100, 0
  br i1 %cmp101, label %for.inc108, label %for.end110

for.inc108:                                       ; preds = %for.cond96
  %call106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %arrayidx98)
  %call107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call106, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc109 = add nsw i32 %i.6, 1
  br label %for.cond96, !llvm.loop !18

for.end110:                                       ; preds = %for.cond96
  call void @llvm.lifetime.end.p0(i64 noundef 40500, ptr noundef %text) #12
  call void @llvm.lifetime.end.p0(i64 noundef 40500, ptr noundef %word) #12
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) local_unnamed_addr #3 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !21
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #12
  %vtable1 = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr2 = getelementptr i8, ptr %vtable1, i64 -24
  %vbase.offset3 = load i64, ptr %vbase.offset.ptr2, align 8, !invariant.load !21
  %add.ptr4 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset3
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr4, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !21
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #12
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %vtable12 = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr13 = getelementptr i8, ptr %vtable12, i64 -24
  %vbase.offset14 = load i64, ptr %vbase.offset.ptr13, align 8, !invariant.load !21
  %add.ptr15 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset14
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr15) #12
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #12
  %vtable20 = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr21 = getelementptr i8, ptr %vtable20, i64 -24
  %vbase.offset22 = load i64, ptr %vbase.offset.ptr21, align 8, !invariant.load !21
  %add.ptr23 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset22
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr23) #12
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #12
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #12
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !5
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #12
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  %vtable29 = load ptr, ptr %__in, align 8, !tbaa !19
  %vbase.offset.ptr30 = getelementptr i8, ptr %vtable29, i64 -24
  %vbase.offset31 = load i64, ptr %vbase.offset.ptr30, align 8, !invariant.load !21
  %add.ptr32 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset31
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #12
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) local_unnamed_addr #8 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !22
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !22
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #8 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !22
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #8 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) local_unnamed_addr #8 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !5
  %1 = load i32, ptr %__c2, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() local_unnamed_addr #8 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

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
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = !{}
!22 = !{!23, !24, i64 16}
!23 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !25, i64 24, !26, i64 28, !26, i64 32, !27, i64 40, !29, i64 48, !7, i64 64, !6, i64 192, !30, i64 200, !31, i64 208}
!24 = !{!"long", !7, i64 0}
!25 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!26 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!27 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !24, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!31 = !{!"_ZTSSt6locale", !32, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
