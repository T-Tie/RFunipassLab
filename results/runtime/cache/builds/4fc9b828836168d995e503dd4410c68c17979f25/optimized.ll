; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz565ecju.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n0) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %temp) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.inc195, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.inc195 ]
  %z.0 = phi i32 [ 0, %entry ], [ %inc196, %for.inc195 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.end197

for.cond1:                                        ; preds = %for.cond, %for.inc12
  %1 = phi i32 [ %4, %for.inc12 ], [ %0, %for.cond ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc12 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv70, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond1, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc191
  %indvars.iv136 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next137, %for.inc191 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.inc191 ]
  %min.1 = phi i32 [ %min.0, %for.cond15.preheader ], [ %min.5, %for.inc191 ]
  %6 = trunc nuw i64 %indvars.iv136 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19, label %for.inc195

for.cond19:                                       ; preds = %for.cond15, %for.inc56
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc56 ], [ 0, %for.cond15 ]
  %min.2 = phi i32 [ %min.3, %for.inc56 ], [ %min.1, %for.cond15 ]
  %exitcond85.not = icmp eq i64 %indvars.iv81, %indvars.iv136
  br i1 %exitcond85.not, label %for.cond60, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond19
  %arrayidx31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 0
  br label %for.cond23

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc41
  %indvars.iv73 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next74, %for.inc41 ]
  %min.3 = phi i32 [ %min.2, %for.cond23.preheader ], [ %min.4, %for.inc41 ]
  %exitcond.not = icmp eq i64 %indvars.iv73, %indvars.iv136
  br i1 %exitcond.not, label %for.cond45.preheader, label %for.body26

for.cond45.preheader:                             ; preds = %for.cond23
  br label %for.cond45

for.body26:                                       ; preds = %for.cond23
  %cmp27 = icmp eq i64 %indvars.iv73, 0
  br i1 %cmp27, label %if.then, label %if.else

if.then:                                          ; preds = %for.body26
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.inc41

if.else:                                          ; preds = %for.body26
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv73
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  br label %for.inc41

for.inc41:                                        ; preds = %if.else, %if.then
  %min.4 = phi i32 [ %7, %if.then ], [ %spec.select, %if.else ]
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond23, !llvm.loop !13

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc53
  %indvars.iv76 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next77, %for.inc53 ]
  %exitcond80.not = icmp eq i64 %indvars.iv76, %indvars.iv136
  br i1 %exitcond80.not, label %for.inc56, label %for.inc53

for.inc53:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv76
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.3
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond45, !llvm.loop !14

for.inc56:                                        ; preds = %for.cond45
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond19, !llvm.loop !15

for.cond60:                                       ; preds = %for.cond19, %for.inc106
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.inc106 ], [ 0, %for.cond19 ]
  %min.5 = phi i32 [ %min.6, %for.inc106 ], [ %min.2, %for.cond19 ]
  %exitcond100.not = icmp eq i64 %indvars.iv96, %indvars.iv136
  br i1 %exitcond100.not, label %for.end108, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond60
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 0, i64 %indvars.iv96
  br label %for.cond65

for.cond65:                                       ; preds = %for.cond65.preheader, %for.inc90
  %indvars.iv86 = phi i64 [ 0, %for.cond65.preheader ], [ %indvars.iv.next87, %for.inc90 ]
  %min.6 = phi i32 [ %min.5, %for.cond65.preheader ], [ %min.7, %for.inc90 ]
  %exitcond90.not = icmp eq i64 %indvars.iv86, %indvars.iv136
  br i1 %exitcond90.not, label %for.cond94.preheader, label %for.body68

for.cond94.preheader:                             ; preds = %for.cond65
  br label %for.cond94

for.body68:                                       ; preds = %for.cond65
  %cmp69 = icmp eq i64 %indvars.iv86, 0
  br i1 %cmp69, label %if.then70, label %if.else75

if.then70:                                        ; preds = %for.body68
  %10 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  br label %for.inc90

if.else75:                                        ; preds = %for.body68
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv86, i64 %indvars.iv96
  %11 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %spec.select68 = call i32 @llvm.smin.i32(i32 %min.6, i32 %11)
  br label %for.inc90

for.inc90:                                        ; preds = %if.else75, %if.then70
  %min.7 = phi i32 [ %10, %if.then70 ], [ %spec.select68, %if.else75 ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond65, !llvm.loop !16

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc103
  %indvars.iv91 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next92, %for.inc103 ]
  %exitcond95.not = icmp eq i64 %indvars.iv91, %indvars.iv136
  br i1 %exitcond95.not, label %for.inc106, label %for.inc103

for.inc103:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %indvars.iv96
  %12 = load i32, ptr %arrayidx101, align 4, !tbaa !5
  %sub102 = sub nsw i32 %12, %min.6
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond94, !llvm.loop !17

for.inc106:                                       ; preds = %for.cond94
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond60, !llvm.loop !18

for.end108:                                       ; preds = %for.cond60
  %13 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc132, %for.end108
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %for.inc132 ], [ 0, %for.end108 ]
  %exitcond110.not = icmp eq i64 %indvars.iv106, %indvars.iv136
  br i1 %exitcond110.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.inc129
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.inc129 ], [ 0, %for.cond112 ]
  %exitcond105.not = icmp eq i64 %indvars.iv101, %indvars.iv136
  br i1 %exitcond105.not, label %for.inc132, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv106, i64 %indvars.iv101
  %14 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv106, i64 %indvars.iv101
  store i32 %14, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  br label %for.cond117, !llvm.loop !19

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  br label %for.cond112, !llvm.loop !20

for.cond136:                                      ; preds = %for.cond112, %for.inc147
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.inc147 ], [ 2, %for.cond112 ]
  %exitcond116.not = icmp eq i64 %indvars.iv111, %indvars.iv136
  br i1 %exitcond116.not, label %for.cond151, label %for.inc147

for.inc147:                                       ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv111
  %15 = load i32, ptr %arrayidx141, align 16, !tbaa !5
  %16 = add nsw i64 %indvars.iv111, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %16
  store i32 %15, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  br label %for.cond136, !llvm.loop !21

for.cond151:                                      ; preds = %for.cond136, %for.inc162
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %for.inc162 ], [ 2, %for.cond136 ]
  %exitcond122.not = icmp eq i64 %indvars.iv117, %indvars.iv136
  br i1 %exitcond122.not, label %for.cond166, label %for.inc162

for.inc162:                                       ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv117
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !5
  %18 = add nsw i64 %indvars.iv117, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1
  br label %for.cond151, !llvm.loop !22

for.cond166:                                      ; preds = %for.cond151, %for.inc188
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %for.inc188 ], [ 2, %for.cond151 ]
  %exitcond134.not = icmp eq i64 %indvars.iv129, %indvars.iv136
  br i1 %exitcond134.not, label %for.inc191, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %19 = add nsw i64 %indvars.iv129, -1
  br label %for.cond171

for.cond171:                                      ; preds = %for.cond171.preheader, %for.inc185
  %indvars.iv123 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next124, %for.inc185 ]
  %exitcond128.not = icmp eq i64 %indvars.iv123, %indvars.iv136
  br i1 %exitcond128.not, label %for.inc188, label %for.inc185

for.inc185:                                       ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv129, i64 %indvars.iv123
  %20 = load i32, ptr %arrayidx178, align 4, !tbaa !5
  %21 = add nsw i64 %indvars.iv123, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %21
  store i32 %20, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br label %for.cond171, !llvm.loop !23

for.inc188:                                       ; preds = %for.cond171
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1
  br label %for.cond166, !llvm.loop !24

for.inc191:                                       ; preds = %for.cond166
  %add = add nsw i32 %13, %s.0
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, -1
  br label %for.cond15, !llvm.loop !25

for.inc195:                                       ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %vtable.i = load ptr, ptr %call193, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call193, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call193, i8 noundef signext %call.i1)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc196 = add nuw nsw i32 %z.0, 1
  br label %for.cond, !llvm.loop !28

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %temp) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n0) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
