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

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n0 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %temp = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n0) #9
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #10
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %temp) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n0)
  %arrayidx110 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond

for.cond:                                         ; preds = %for.end192, %entry
  %min.0 = phi i32 [ undef, %entry ], [ %min.1, %for.end192 ]
  %z.0 = phi i32 [ 0, %entry ], [ %inc13.i12, %for.end192 ]
  %0 = load i32, ptr %n0, align 4, !tbaa !5
  %cmp = icmp slt i32 %z.0, %0
  br i1 %cmp, label %for.cond1, label %for.end197

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %4, %for.end ], [ %0, %for.cond ]
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv81, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %3 = zext i32 %1 to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv81, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n0, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond1

for.cond15:                                       ; preds = %for.cond15.preheader, %for.end190
  %indvars.iv149 = phi i64 [ %3, %for.cond15.preheader ], [ %indvars.iv.next150, %for.end190 ]
  %s.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add, %for.end190 ]
  %min.1 = phi i32 [ %min.0, %for.cond15.preheader ], [ %min.5, %for.end190 ]
  %6 = trunc nuw i64 %indvars.iv149 to i32
  %cmp16 = icmp sgt i32 %6, 1
  br i1 %cmp16, label %for.cond19.preheader, label %for.end192

for.cond19.preheader:                             ; preds = %for.cond15
  %exitcond.peel.not = icmp eq i64 %indvars.iv149, 0
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.end55
  %indvars.iv93 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next94, %for.end55 ]
  %min.2 = phi i32 [ %min.1, %for.cond19.preheader ], [ %min.3.lcssa, %for.end55 ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv149
  br i1 %exitcond97.not, label %for.cond60.preheader, label %for.cond23.preheader

for.cond60.preheader:                             ; preds = %for.cond19
  br label %for.cond60

for.cond23.preheader:                             ; preds = %for.cond19
  br i1 %exitcond.peel.not, label %for.cond45.preheader, label %if.end.peel

if.end.peel:                                      ; preds = %for.cond23.preheader
  %arrayidx31.peel = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 0
  %7 = load i32, ptr %arrayidx31.peel, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond23

for.cond23:                                       ; preds = %if.end.peel, %if.end
  %indvars.iv84 = phi i64 [ 1, %if.end.peel ], [ %indvars.iv.next85, %if.end ]
  %min.3 = phi i32 [ %7, %if.end.peel ], [ %spec.select, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv84, %indvars.iv149
  br i1 %exitcond.not, label %for.cond45.preheader, label %if.end

for.cond45.preheader:                             ; preds = %for.cond23, %for.cond23.preheader
  %min.3.lcssa = phi i32 [ %min.2, %for.cond23.preheader ], [ %min.3, %for.cond23 ]
  br label %for.cond45

if.end:                                           ; preds = %for.cond23
  %arrayidx35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv84
  %8 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !12
  %spec.select = call i32 @llvm.smin.i32(i32 %min.3, i32 %8)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond23, !llvm.loop !13

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc53
  %indvars.iv88 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next89, %for.inc53 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv149
  br i1 %exitcond92.not, label %for.end55, label %for.inc53

for.inc53:                                        ; preds = %for.cond45
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 %indvars.iv88
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !12
  %sub = sub nsw i32 %9, %min.3.lcssa
  store i32 %sub, ptr %arrayidx52, align 4, !tbaa !5
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond45, !llvm.loop !15

for.end55:                                        ; preds = %for.cond45
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond19

for.cond60:                                       ; preds = %for.cond60.preheader, %for.end105
  %indvars.iv109 = phi i64 [ 0, %for.cond60.preheader ], [ %indvars.iv.next110, %for.end105 ]
  %min.5 = phi i32 [ %min.2, %for.cond60.preheader ], [ %min.6.lcssa, %for.end105 ]
  %exitcond113.not = icmp eq i64 %indvars.iv109, %indvars.iv149
  br i1 %exitcond113.not, label %for.end108, label %for.cond65.preheader

for.cond65.preheader:                             ; preds = %for.cond60
  br i1 %exitcond.peel.not, label %for.cond94.preheader, label %if.end89.peel

if.end89.peel:                                    ; preds = %for.cond65.preheader
  %arrayidx74.peel = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 0, i64 %indvars.iv109
  %10 = load i32, ptr %arrayidx74.peel, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond65

for.cond65:                                       ; preds = %if.end89.peel, %if.end89
  %indvars.iv98 = phi i64 [ 1, %if.end89.peel ], [ %indvars.iv.next99, %if.end89 ]
  %min.6 = phi i32 [ %10, %if.end89.peel ], [ %spec.select79, %if.end89 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv149
  br i1 %exitcond102.not, label %for.cond94.preheader, label %if.end89

for.cond94.preheader:                             ; preds = %for.cond65, %for.cond65.preheader
  %min.6.lcssa = phi i32 [ %min.5, %for.cond65.preheader ], [ %min.6, %for.cond65 ]
  br label %for.cond94

if.end89:                                         ; preds = %for.cond65
  %arrayidx79 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv98, i64 %indvars.iv109
  %11 = load i32, ptr %arrayidx79, align 4, !tbaa !5, !invariant.load !12
  %spec.select79 = call i32 @llvm.smin.i32(i32 %min.6, i32 %11)
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond65, !llvm.loop !16

for.cond94:                                       ; preds = %for.cond94.preheader, %for.inc103
  %indvars.iv104 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next105, %for.inc103 ]
  %exitcond108.not = icmp eq i64 %indvars.iv104, %indvars.iv149
  br i1 %exitcond108.not, label %for.end105, label %for.inc103

for.inc103:                                       ; preds = %for.cond94
  %arrayidx101 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv104, i64 %indvars.iv109
  %12 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !12
  %sub102 = sub nsw i32 %12, %min.6.lcssa
  store i32 %sub102, ptr %arrayidx101, align 4, !tbaa !5
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  br label %for.cond94, !llvm.loop !17

for.end105:                                       ; preds = %for.cond94
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond60

for.end108:                                       ; preds = %for.cond60
  %13 = load i32, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond112

for.cond112:                                      ; preds = %for.end131, %for.end108
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.end131 ], [ 0, %for.end108 ]
  %exitcond123.not = icmp eq i64 %indvars.iv119, %indvars.iv149
  br i1 %exitcond123.not, label %for.cond136, label %for.cond117

for.cond117:                                      ; preds = %for.cond112, %for.inc129
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %for.inc129 ], [ 0, %for.cond112 ]
  %exitcond118.not = icmp eq i64 %indvars.iv114, %indvars.iv149
  br i1 %exitcond118.not, label %for.end131, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx124 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv119, i64 %indvars.iv114
  %14 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !12
  %arrayidx128 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv119, i64 %indvars.iv114
  store i32 %14, ptr %arrayidx128, align 4, !tbaa !5
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond117, !llvm.loop !18

for.end131:                                       ; preds = %for.cond117
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond112

for.cond136:                                      ; preds = %for.cond112, %for.body139
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.body139 ], [ 2, %for.cond112 ]
  %exitcond129.not = icmp eq i64 %indvars.iv124, %indvars.iv149
  br i1 %exitcond129.not, label %for.cond151, label %for.body139

for.body139:                                      ; preds = %for.cond136
  %arrayidx141 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv124
  %15 = load i32, ptr %arrayidx141, align 16, !tbaa !5, !invariant.load !12
  %16 = add nsw i64 %indvars.iv124, -1
  %arrayidx145 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %16
  store i32 %15, ptr %arrayidx145, align 16, !tbaa !5
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  br label %for.cond136

for.cond151:                                      ; preds = %for.cond136, %for.body154
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.body154 ], [ 2, %for.cond136 ]
  %exitcond135.not = icmp eq i64 %indvars.iv130, %indvars.iv149
  br i1 %exitcond135.not, label %for.cond166, label %for.body154

for.body154:                                      ; preds = %for.cond151
  %arrayidx157 = getelementptr inbounds nuw [100 x i32], ptr %temp, i64 0, i64 %indvars.iv130
  %17 = load i32, ptr %arrayidx157, align 4, !tbaa !5, !invariant.load !12
  %18 = add nsw i64 %indvars.iv130, -1
  %arrayidx161 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %18
  store i32 %17, ptr %arrayidx161, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  br label %for.cond151

for.cond166:                                      ; preds = %for.cond151, %for.inc188
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %for.inc188 ], [ 2, %for.cond151 ]
  %exitcond147.not = icmp eq i64 %indvars.iv142, %indvars.iv149
  br i1 %exitcond147.not, label %for.end190, label %for.cond171.preheader

for.cond171.preheader:                            ; preds = %for.cond166
  %19 = add nsw i64 %indvars.iv142, -1
  br label %for.cond171

for.cond171:                                      ; preds = %for.cond171.preheader, %for.inc185
  %indvars.iv136 = phi i64 [ 2, %for.cond171.preheader ], [ %indvars.iv.next137, %for.inc185 ]
  %exitcond141.not = icmp eq i64 %indvars.iv136, %indvars.iv149
  br i1 %exitcond141.not, label %for.inc188, label %for.inc185

for.inc185:                                       ; preds = %for.cond171
  %arrayidx178 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %temp, i64 0, i64 %indvars.iv142, i64 %indvars.iv136
  %20 = load i32, ptr %arrayidx178, align 4, !tbaa !5, !invariant.load !12
  %21 = add nsw i64 %indvars.iv136, -1
  %arrayidx184 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %19, i64 %21
  store i32 %20, ptr %arrayidx184, align 4, !tbaa !5
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  br label %for.cond171, !llvm.loop !19

for.inc188:                                       ; preds = %for.cond171
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  br label %for.cond166, !llvm.loop !20

for.end190:                                       ; preds = %for.cond166
  %add = add nsw i32 %13, %s.0
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, -1
  br label %for.cond15

for.end192:                                       ; preds = %for.cond15
  %call193 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call194 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call193, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc13.i12 = add nuw nsw i32 %z.0, 1
  br label %for.cond

for.end197:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %temp) #11
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n0) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #5 comdat {
entry:
  %tobool.not = icmp eq ptr %__f, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !21, !invariant.load !12
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !29, !invariant.load !12
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !30, !invariant.load !12
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !12
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree }
attributes #11 = { nounwind }
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
!12 = !{}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.peeled.count", i32 1}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !7, i64 56}
!22 = !{!"_ZTSSt5ctypeIcE", !23, i64 0, !24, i64 16, !26, i64 24, !27, i64 32, !27, i64 40, !28, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!23 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!24 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"p1 int", !25, i64 0}
!28 = !{!"p1 short", !25, i64 0}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !8, i64 0}
