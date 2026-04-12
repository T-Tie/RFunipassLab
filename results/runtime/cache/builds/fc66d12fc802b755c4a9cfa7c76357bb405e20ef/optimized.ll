; ModuleID = '<stdin>'
source_filename = "/tmp/tmp53ktk9u0.cpp"
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

@a = dso_local global [105 x [105 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #10
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr noundef align 16 @a, i8 noundef 0, i64 noundef 44100, i1 noundef false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.end, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z7guilingi(i32 noundef %3) #11
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call fastcc void @outlined_ir_func_0(ptr %k)
  br label %for.cond

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z7guilingi(i32 noundef %n) local_unnamed_addr #4 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j15 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %j38 = alloca i32, align 4
  %j57 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end26, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %n
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !12
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %min.0 = phi i32 [ %1, %for.body ], [ %min.1, %if.end ]
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %n
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %3 to i64
  %arrayidx7 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom6
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds [105 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %cmp10 = icmp slt i32 %4, %min.0
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  %min.1 = phi i32 [ %4, %if.then ], [ %min.0, %for.body5 ]
  call fastcc void @outlined_ir_func_0(ptr %j)
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j15) #10
  store i32 0, ptr %j15, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.body19, %for.end
  %5 = load i32, ptr %j15, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %5, %n
  br i1 %cmp17, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond16
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %6 to i64
  %arrayidx21 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom20
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds [105 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr %j15)
  br label %for.cond16

for.end26:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j15) #10
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond

for.end29:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i30) #10
  store i32 0, ptr %i30, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.end69, %for.end29
  %8 = load i32, ptr %i30, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %8, %n
  br i1 %cmp32, label %for.body34, label %for.end72

for.body34:                                       ; preds = %for.cond31
  %idxprom36 = sext i32 %8 to i64
  %arrayidx37 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom36
  %9 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !12
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j38) #10
  store i32 1, ptr %j38, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %if.end53, %for.body34
  %min35.0 = phi i32 [ %9, %for.body34 ], [ %min35.1, %if.end53 ]
  %10 = load i32, ptr %j38, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %10, %n
  br i1 %cmp40, label %for.body42, label %for.end56

for.body42:                                       ; preds = %for.cond39
  %idxprom43 = sext i32 %10 to i64
  %arrayidx44 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom43
  %11 = load i32, ptr %i30, align 4, !tbaa !5
  %idxprom45 = sext i32 %11 to i64
  %arrayidx46 = getelementptr inbounds [105 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %12 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !12
  %cmp47 = icmp slt i32 %12, %min35.0
  br i1 %cmp47, label %if.then48, label %if.end53

if.then48:                                        ; preds = %for.body42
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %for.body42
  %min35.1 = phi i32 [ %12, %if.then48 ], [ %min35.0, %for.body42 ]
  call fastcc void @outlined_ir_func_0(ptr %j38)
  br label %for.cond39

for.end56:                                        ; preds = %for.cond39
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j38) #10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j57) #10
  store i32 0, ptr %j57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body61, %for.end56
  %13 = load i32, ptr %j57, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %13, %n
  br i1 %cmp59, label %for.body61, label %for.end69

for.body61:                                       ; preds = %for.cond58
  %idxprom62 = sext i32 %13 to i64
  %arrayidx63 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom62
  %14 = load i32, ptr %i30, align 4, !tbaa !5
  %idxprom64 = sext i32 %14 to i64
  %arrayidx65 = getelementptr inbounds [105 x i32], ptr %arrayidx63, i64 0, i64 %idxprom64
  %15 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !12
  %sub66 = sub nsw i32 %15, %min35.0
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  call fastcc void @outlined_ir_func_0(ptr %j57)
  br label %for.cond58

for.end69:                                        ; preds = %for.cond58
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j57) #10
  call fastcc void @outlined_ir_func_0(ptr %i30)
  br label %for.cond31

for.end72:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i30) #10
  %16 = load i32, ptr getelementptr inbounds ([105 x i32], ptr getelementptr inbounds ([105 x [105 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 8, !tbaa !5
  %cmp73 = icmp eq i32 %n, 2
  br i1 %cmp73, label %cleanup, label %if.else

if.else:                                          ; preds = %for.end72
  call void @_Z8xiaojiani(i32 noundef %n) #12
  %sub75 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z7guilingi(i32 noundef %sub75) #12
  %add = add nsw i32 %16, %call
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %if.else
  %retval.0 = phi i32 [ %add, %if.else ], [ %16, %for.end72 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #5 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #6 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !13, !invariant.load !12
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !12
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %n) local_unnamed_addr #7 {
entry:
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %n, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %0, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !12
  %idxprom1 = sext i32 %0 to i64
  %arrayidx2 = getelementptr inbounds [105 x i32], ptr @a, i64 0, i64 %idxprom1
  store i32 %1, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !12
  %arrayidx8 = getelementptr inbounds [105 x [105 x i32]], ptr @a, i64 0, i64 %idxprom1
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %add18, %for.inc ]
  %cmp12 = icmp slt i32 %j.0, %sub
  br i1 %cmp12, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond10
  %add18 = add nsw i32 %j.0, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [105 x i32], ptr %arrayidx5, i64 0, i64 %idxprom19
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [105 x i32], ptr %arrayidx8, i64 0, i64 %idxprom23
  store i32 %3, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end:                                          ; preds = %for.cond10
  call fastcc void @outlined_ir_func_0(ptr %i)
  br label %for.cond

for.end27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #10
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #6 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #5 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !16, !invariant.load !12
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #6 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #13
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !34, !invariant.load !12
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !40, !invariant.load !12
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !13, !invariant.load !12
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !12
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0(ptr %0) unnamed_addr #9 {
for.cond1.exitStub:
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %inc11 = add nsw i32 %1, 1
  store i32 %inc11, ptr %0, align 4, !tbaa !5
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nofree nosync nounwind }
attributes #13 = { noreturn }

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
!12 = !{}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
