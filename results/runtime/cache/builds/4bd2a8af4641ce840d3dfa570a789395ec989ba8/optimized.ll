; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgcbre_hb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2jzPA100_ii(ptr noundef captures(none) %a, i32 noundef %k) #0 {
entry:
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %0 = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.inc135 ], [ %0, %entry ]
  %sum.0 = phi i32 [ %add, %for.inc135 ], [ 0, %entry ]
  %1 = trunc nuw i64 %indvars.iv139 to i32
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond1, label %for.end136

for.cond1:                                        ; preds = %for.cond, %for.inc31
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc31 ], [ 0, %for.cond ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv139
  br i1 %exitcond97.not, label %for.cond34, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 1, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv139
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body7

for.cond17.preheader:                             ; preds = %for.cond5
  br label %for.cond17

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !9

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc28
  %indvars.iv88 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next89, %for.inc28 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv139
  br i1 %exitcond92.not, label %for.inc31, label %for.inc28

for.inc28:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93, i64 %indvars.iv88
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond17, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond17
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond1, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond1, %for.inc88
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %for.inc88 ], [ 0, %for.cond1 ]
  %exitcond117.not = icmp eq i64 %indvars.iv113, %indvars.iv139
  br i1 %exitcond117.not, label %for.end90, label %for.cond37

for.cond37:                                       ; preds = %for.cond34, %for.body39
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body39 ], [ 1, %for.cond34 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv139
  br i1 %exitcond102.not, label %if.then51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv98, i64 %indvars.iv113
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %5, 0
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br i1 %cmp44, label %for.inc88, label %for.cond37, !llvm.loop !14

if.then51:                                        ; preds = %for.cond37
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv113
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.body57, %if.then51
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.body57 ], [ 1, %if.then51 ]
  %min.2 = phi i32 [ %spec.select82, %for.body57 ], [ %6, %if.then51 ]
  %exitcond107.not = icmp eq i64 %indvars.iv103, %indvars.iv139
  br i1 %exitcond107.not, label %for.cond72.preheader, label %for.body57

for.cond72.preheader:                             ; preds = %for.cond55
  br label %for.cond72

for.body57:                                       ; preds = %for.cond55
  %arrayidx61 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv103, i64 %indvars.iv113
  %7 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %spec.select82 = tail call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond55, !llvm.loop !15

for.cond72:                                       ; preds = %for.cond72.preheader, %for.inc84
  %indvars.iv108 = phi i64 [ 0, %for.cond72.preheader ], [ %indvars.iv.next109, %for.inc84 ]
  %exitcond112.not = icmp eq i64 %indvars.iv108, %indvars.iv139
  br i1 %exitcond112.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv108, i64 %indvars.iv113
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %sub79 = sub nsw i32 %8, %min.2
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  br label %for.cond72, !llvm.loop !16

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  br label %for.cond34, !llvm.loop !17

for.end90:                                        ; preds = %for.cond34
  %9 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc111 ], [ 0, %for.end90 ]
  %exitcond128.not = icmp eq i64 %indvars.iv124, %indvars.iv139
  br i1 %exitcond128.not, label %for.cond114, label %for.cond96

for.cond96:                                       ; preds = %for.cond93, %for.inc108
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc108 ], [ 2, %for.cond93 ]
  %exitcond123.not = icmp eq i64 %indvars.iv118, %indvars.iv139
  br i1 %exitcond123.not, label %for.inc111, label %for.inc108

for.inc108:                                       ; preds = %for.cond96
  %arrayidx102 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv124, i64 %indvars.iv118
  %10 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %11 = add nsw i64 %indvars.iv118, -1
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv124, i64 %11
  store i32 %10, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  br label %for.cond96, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond96
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond93, !llvm.loop !19

for.cond114:                                      ; preds = %for.cond93, %for.inc132
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %for.inc132 ], [ 0, %for.cond93 ]
  %exitcond138.not = icmp eq i64 %indvars.iv134, %indvars.iv139
  br i1 %exitcond138.not, label %for.inc135, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond114
  %invariant.gep84 = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv134
  br label %for.cond117

for.cond117:                                      ; preds = %for.cond117.preheader, %for.inc129
  %indvars.iv129 = phi i64 [ 2, %for.cond117.preheader ], [ %indvars.iv.next130, %for.inc129 ]
  %exitcond133.not = icmp eq i64 %indvars.iv129, %indvars.iv139
  br i1 %exitcond133.not, label %for.inc132, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv129, i64 %indvars.iv134
  %12 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %gep85 = getelementptr [100 x i32], ptr %invariant.gep84, i64 %indvars.iv129
  store i32 %12, ptr %gep85, align 4, !tbaa !5
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1
  br label %for.cond114, !llvm.loop !21

for.inc135:                                       ; preds = %for.cond114
  %add = add nsw i32 %9, %sum.0
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, -1
  br label %for.cond, !llvm.loop !22

for.end136:                                       ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %num) #7
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %ans) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = phi i32 [ %3, %for.inc16 ], [ %.pre, %entry ]
  %1 = phi i32 [ %4, %for.inc16 ], [ %.pre, %entry ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc16 ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %0, %for.cond ]
  %4 = phi i32 [ %6, %for.inc10 ], [ %1, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc10 ], [ 0, %for.cond ]
  %5 = sext i32 %4 to i64
  %cmp2 = icmp slt i64 %indvars.iv12, %5
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %6 = phi i32 [ %.pre22, %for.inc ], [ %3, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre22 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond1, !llvm.loop !24

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr noundef nonnull %num, i32 noundef %4)
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv15
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !25

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %8 = phi i32 [ %.pre21, %for.inc26 ], [ %1, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc26 ], [ 0, %for.cond ]
  %9 = sext i32 %8 to i64
  %cmp20 = icmp slt i64 %indvars.iv18, %9
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv18
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %.pre21 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !28

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %ans) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !29
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !47
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !53
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !26
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !44, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !31, i64 0, !41, i64 216, !7, i64 224, !42, i64 225, !43, i64 232, !44, i64 240, !45, i64 248, !46, i64 256}
!31 = !{!"_ZTSSt8ios_base", !32, i64 8, !32, i64 16, !33, i64 24, !34, i64 28, !34, i64 32, !35, i64 40, !37, i64 48, !7, i64 64, !6, i64 192, !38, i64 200, !39, i64 208}
!32 = !{!"long", !7, i64 0}
!33 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!34 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!35 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !36, i64 0}
!36 = !{!"any pointer", !7, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !36, i64 0, !32, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !36, i64 0}
!39 = !{!"_ZTSSt6locale", !40, i64 0}
!40 = !{!"p1 _ZTSNSt6locale5_ImplE", !36, i64 0}
!41 = !{!"p1 _ZTSSo", !36, i64 0}
!42 = !{!"bool", !7, i64 0}
!43 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !36, i64 0}
!44 = !{!"p1 _ZTSSt5ctypeIcE", !36, i64 0}
!45 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !36, i64 0}
!46 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !36, i64 0}
!47 = !{!48, !7, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !42, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !36, i64 0}
!51 = !{!"p1 int", !36, i64 0}
!52 = !{!"p1 short", !36, i64 0}
!53 = !{!7, !7, i64 0}
