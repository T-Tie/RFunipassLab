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
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2jzPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %k) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %sum.0 = phi i32 [ 0, %entry ], [ %add, %for.inc135 ]
  %.sink = phi i32 [ %k, %entry ], [ %dec, %for.inc135 ]
  %cmp = icmp sgt i32 %.sink, 1
  br i1 %cmp, label %for.body, label %for.end136

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc31, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc32, %for.inc31 ]
  %cmp2 = icmp slt i32 %i.0, %.sink
  br i1 %cmp2, label %for.body3, label %for.end33

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 1, %for.body3 ], [ %inc, %for.inc ]
  %min.0 = phi i32 [ %0, %for.body3 ], [ %min.1, %for.inc ]
  %cmp6 = icmp slt i32 %j.0, %.sink
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom10
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %1, %min.0
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %min.1 = phi i32 [ %1, %if.then ], [ %min.0, %for.body7 ]
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc28, %for.end
  %j.1 = phi i32 [ 0, %for.end ], [ %inc29, %for.inc28 ]
  %cmp18 = icmp slt i32 %j.1, %.sink
  br i1 %cmp18, label %for.inc28, label %for.inc31

for.inc28:                                        ; preds = %for.cond17
  %idxprom22 = sext i32 %j.1 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom22
  %2 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %inc29 = add nsw i32 %j.1, 1
  br label %for.cond17, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond17
  %inc32 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !13

for.end33:                                        ; preds = %for.cond1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc88, %for.end33
  %i.1 = phi i32 [ 0, %for.end33 ], [ %inc89, %for.inc88 ]
  %cmp35 = icmp slt i32 %i.1, %.sink
  br i1 %cmp35, label %for.body36, label %for.end90

for.body36:                                       ; preds = %for.cond34
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc47, %for.body36
  %j.2 = phi i32 [ 1, %for.body36 ], [ %inc48, %for.inc47 ]
  %cmp38 = icmp slt i32 %j.2, %.sink
  br i1 %cmp38, label %for.body39, label %if.then51

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %j.2 to i64
  %arrayidx41 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom40
  %idxprom42 = sext i32 %i.1 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %3, 0
  br i1 %cmp44, label %for.inc88, label %for.inc47

for.inc47:                                        ; preds = %for.body39
  %inc48 = add nsw i32 %j.2, 1
  br label %for.cond37, !llvm.loop !14

if.then51:                                        ; preds = %for.cond37
  %idxprom53 = sext i32 %i.1 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom53
  %4 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc69, %if.then51
  %j.3 = phi i32 [ 1, %if.then51 ], [ %inc70, %for.inc69 ]
  %min.2 = phi i32 [ %4, %if.then51 ], [ %min.3, %for.inc69 ]
  %cmp56 = icmp slt i32 %j.3, %.sink
  br i1 %cmp56, label %for.body57, label %for.end71

for.body57:                                       ; preds = %for.cond55
  %idxprom58 = sext i32 %j.3 to i64
  %arrayidx59 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx59, i64 0, i64 %idxprom53
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %cmp62 = icmp slt i32 %5, %min.2
  br i1 %cmp62, label %if.then63, label %for.inc69

if.then63:                                        ; preds = %for.body57
  br label %for.inc69

for.inc69:                                        ; preds = %for.body57, %if.then63
  %min.3 = phi i32 [ %5, %if.then63 ], [ %min.2, %for.body57 ]
  %inc70 = add nsw i32 %j.3, 1
  br label %for.cond55, !llvm.loop !15

for.end71:                                        ; preds = %for.cond55
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc84, %for.end71
  %j.4 = phi i32 [ 0, %for.end71 ], [ %inc85, %for.inc84 ]
  %cmp73 = icmp slt i32 %j.4, %.sink
  br i1 %cmp73, label %for.inc84, label %for.inc88

for.inc84:                                        ; preds = %for.cond72
  %idxprom75 = sext i32 %j.4 to i64
  %arrayidx76 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom75
  %arrayidx78 = getelementptr inbounds [100 x i32], ptr %arrayidx76, i64 0, i64 %idxprom53
  %6 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %sub79 = sub nsw i32 %6, %min.2
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %inc85 = add nsw i32 %j.4, 1
  br label %for.cond72, !llvm.loop !16

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %inc89 = add nsw i32 %i.1, 1
  br label %for.cond34, !llvm.loop !17

for.end90:                                        ; preds = %for.cond34
  %arrayidx91 = getelementptr inbounds [100 x i32], ptr %a, i64 1
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx91, i64 0, i64 1
  %7 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %add = add nsw i32 %7, %sum.0
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %i.2 = phi i32 [ 0, %for.end90 ], [ %inc112, %for.inc111 ]
  %cmp94 = icmp slt i32 %i.2, %.sink
  br i1 %cmp94, label %for.body95, label %for.end113

for.body95:                                       ; preds = %for.cond93
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %for.body95
  %j.5 = phi i32 [ 2, %for.body95 ], [ %inc109, %for.inc108 ]
  %cmp97 = icmp slt i32 %j.5, %.sink
  br i1 %cmp97, label %for.inc108, label %for.inc111

for.inc108:                                       ; preds = %for.cond96
  %idxprom99 = sext i32 %i.2 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom99
  %idxprom101 = sext i32 %j.5 to i64
  %arrayidx102 = getelementptr inbounds [100 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %8 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %sub105 = sub nsw i32 %j.5, 1
  %idxprom106 = sext i32 %sub105 to i64
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %arrayidx100, i64 0, i64 %idxprom106
  store i32 %8, ptr %arrayidx107, align 4, !tbaa !5
  %inc109 = add nsw i32 %j.5, 1
  br label %for.cond96, !llvm.loop !18

for.inc111:                                       ; preds = %for.cond96
  %inc112 = add nsw i32 %i.2, 1
  br label %for.cond93, !llvm.loop !19

for.end113:                                       ; preds = %for.cond93
  br label %for.cond114

for.cond114:                                      ; preds = %for.inc132, %for.end113
  %i.3 = phi i32 [ 0, %for.end113 ], [ %inc133, %for.inc132 ]
  %cmp115 = icmp slt i32 %i.3, %.sink
  br i1 %cmp115, label %for.body116, label %for.inc135

for.body116:                                      ; preds = %for.cond114
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc129, %for.body116
  %j.6 = phi i32 [ 2, %for.body116 ], [ %inc130, %for.inc129 ]
  %cmp118 = icmp slt i32 %j.6, %.sink
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond117
  %idxprom120 = sext i32 %j.6 to i64
  %arrayidx121 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom120
  %idxprom122 = sext i32 %i.3 to i64
  %arrayidx123 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom122
  %9 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %sub124 = sub nsw i32 %j.6, 1
  %idxprom125 = sext i32 %sub124 to i64
  %arrayidx126 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom125
  %arrayidx128 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom122
  store i32 %9, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %j.6, 1
  br label %for.cond117, !llvm.loop !20

for.inc132:                                       ; preds = %for.cond117
  %inc133 = add nsw i32 %i.3, 1
  br label %for.cond114, !llvm.loop !21

for.inc135:                                       ; preds = %for.cond114
  %dec = add nsw i32 %.sink, -1
  br label %for.cond, !llvm.loop !22

for.end136:                                       ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %num) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %ans) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.inc16

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %k.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %k.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %num, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %k.0 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %k.0, 1
  br label %for.cond4, !llvm.loop !23

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !24

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %num, i32 noundef %1) #8
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %ans, i64 0, i64 %idxprom14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %inc17 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !25

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc27, %for.inc26 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %i.1, %3
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %idxprom22 = sext i32 %i.1 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %ans, i64 0, i64 %idxprom22
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc27 = add nsw i32 %i.1, 1
  br label %for.cond19, !llvm.loop !26

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %ans) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef %__pf) local_unnamed_addr #4 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr %__pf(ptr noundef nonnull align 8 dereferenceable(8) %this)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) #5 {
entry:
  %vtable = load ptr, ptr %__os, align 8, !tbaa !27
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !29
  %add.ptr = getelementptr inbounds i8, ptr %__os, i64 %vbase.offset
  %call = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__os, i8 noundef signext %call)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %call1)
  ret ptr %call2
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %__os) local_unnamed_addr #5 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %__os)
  ret ptr %call
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw %"class.std::basic_ios", ptr %this, i32 0, i32 5
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !30
  %call = call noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %0)
  %call2 = call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %call, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #9
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !48
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !54
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !27
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !29
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

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
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"vtable pointer", !8, i64 0}
!29 = !{}
!30 = !{!31, !45, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !32, i64 0, !42, i64 216, !7, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!32 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !38, i64 48, !7, i64 64, !6, i64 192, !39, i64 200, !40, i64 208}
!33 = !{!"long", !7, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !37, i64 0}
!37 = !{!"any pointer", !7, i64 0}
!38 = !{!"_ZTSNSt8ios_base6_WordsE", !37, i64 0, !33, i64 8}
!39 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !37, i64 0}
!40 = !{!"_ZTSSt6locale", !41, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !37, i64 0}
!42 = !{!"p1 _ZTSSo", !37, i64 0}
!43 = !{!"bool", !7, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !37, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !37, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !37, i64 0}
!48 = !{!49, !7, i64 56}
!49 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !43, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !37, i64 0}
!52 = !{!"p1 int", !37, i64 0}
!53 = !{!"p1 short", !37, i64 0}
!54 = !{!7, !7, i64 0}
