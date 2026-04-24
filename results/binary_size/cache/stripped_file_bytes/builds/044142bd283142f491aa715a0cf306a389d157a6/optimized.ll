; ModuleID = '<stdin>'
source_filename = "/tmp/tmpngm99t_q.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [200 x [200 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %num) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160000) %num, i8 0, i64 160000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not10 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not10, label %for.cond1.preheader, label %for.end20

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %10, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.011 = phi i32 [ %inc19, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp3.not.not8 = icmp sgt i32 %1, 0
  br i1 %cmp3.not.not8, label %for.cond5.preheader, label %for.end14

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.inc12
  %2 = phi i32 [ %5, %for.inc12 ], [ %1, %for.cond1.preheader ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc12 ], [ 0, %for.cond1.preheader ]
  %cmp7.not.not6 = icmp sgt i32 %2, 0
  br i1 %cmp7.not.not6, label %for.body8, label %for.cond5.preheader.for.inc12_crit_edge

for.cond5.preheader.for.inc12_crit_edge:          ; preds = %for.cond5.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc12

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %num, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp7.not.not, label %for.body8, label %for.inc12, !llvm.loop !9

for.inc12:                                        ; preds = %for.body8, %for.cond5.preheader.for.inc12_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.inc12_crit_edge ], [ %4, %for.body8 ]
  %5 = phi i32 [ %2, %for.cond5.preheader.for.inc12_crit_edge ], [ %3, %for.body8 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp3.not.not = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp3.not.not, label %for.cond5.preheader, label %for.end14, !llvm.loop !12

for.end14:                                        ; preds = %for.inc12, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %5, %for.inc12 ]
  %call15 = call noundef i32 @_Z3delPA200_ii(ptr noundef nonnull %num, i32 noundef %.lcssa)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call15)
  %vtable.i = load ptr, ptr %call16, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %6 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end14
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end14
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  %7 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 67
  %8 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %6)
  %vtable.i.i.i = load ptr, ptr %6, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %9 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %9(ptr noundef nonnull align 8 dereferenceable(570) %6, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %8, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call16, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc19 = add nuw nsw i32 %i.011, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %inc19, %10
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end20, !llvm.loop !41

for.end20:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %num) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3delPA200_ii(ptr noundef captures(none) %num, i32 noundef %n) local_unnamed_addr #4 {
entry:
  %arrayidx82 = getelementptr inbounds nuw i8, ptr %num, i64 804
  %invariant.gep = getelementptr i8, ptr %num, i64 -800
  %0 = add i32 %n, 1
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end128, %entry
  %indvars.iv134 = phi i32 [ %indvars.iv.next135, %for.end128 ], [ %0, %entry ]
  %accumulator.tr = phi i32 [ %add130, %for.end128 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub.le151154157160, %for.end128 ], [ %n, %entry ]
  %1 = zext i32 %n.tr to i64
  %2 = zext i32 %n.tr to i64
  %3 = zext i32 %n.tr to i64
  %4 = add nsw i64 %3, -2
  %cmp.not.not85 = icmp sgt i32 %n.tr, 0
  br i1 %cmp.not.not85, label %for.cond1.preheader.preheader, label %for.cond85.preheader.thread

for.cond1.preheader.preheader:                    ; preds = %tailrecurse
  %wide.trip.count113 = zext nneg i32 %n.tr to i64
  %min.iters.check176 = icmp ult i32 %n.tr, 4
  %n.vec179 = and i64 %1, 2147483644
  %cmp.n185 = icmp eq i64 %n.vec179, %1
  %min.iters.check164 = icmp ult i32 %n.tr, 4
  %n.vec167 = and i64 %2, 2147483644
  %cmp.n173 = icmp eq i64 %n.vec167, %2
  br label %for.cond1.preheader

for.cond38.preheader.preheader:                   ; preds = %for.inc31
  %wide.trip.count128 = zext nneg i32 %n.tr to i64
  br label %for.cond38.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.inc31
  %indvars.iv110 = phi i64 [ 0, %for.cond1.preheader.preheader ], [ %indvars.iv.next111, %for.inc31 ]
  br i1 %min.iters.check176, label %for.body4.preheader, label %vector.body180

vector.body180:                                   ; preds = %for.cond1.preheader, %vector.body180
  %index181 = phi i64 [ %index.next183, %vector.body180 ], [ 0, %for.cond1.preheader ]
  %vec.phi = phi <4 x i32> [ %6, %vector.body180 ], [ splat (i32 1000), %for.cond1.preheader ]
  %5 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv110, i64 %index181
  %wide.load182 = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %6 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load182, <4 x i32> %vec.phi)
  %index.next183 = add nuw i64 %index181, 4
  %7 = icmp eq i64 %index.next183, %n.vec179
  br i1 %7, label %middle.block184, label %vector.body180, !llvm.loop !42

middle.block184:                                  ; preds = %vector.body180
  %8 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %6)
  br i1 %cmp.n185, label %for.end, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.cond1.preheader, %middle.block184
  %indvars.iv.ph = phi i64 [ 0, %for.cond1.preheader ], [ %n.vec179, %middle.block184 ]
  %min.082.ph = phi i32 [ 1000, %for.cond1.preheader ], [ %8, %middle.block184 ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %min.082 = phi i32 [ %spec.select, %for.body4 ], [ %min.082.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv110, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %9, i32 %min.082)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count113
  br i1 %exitcond.not, label %for.end, label %for.body4, !llvm.loop !45

for.end:                                          ; preds = %for.body4, %middle.block184
  %spec.select.lcssa = phi i32 [ %8, %middle.block184 ], [ %spec.select, %for.body4 ]
  %cmp12.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp12.not, label %for.inc31, label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.end
  br i1 %min.iters.check164, label %for.body17.preheader188, label %vector.ph165

vector.ph165:                                     ; preds = %for.body17.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next171, %vector.body168 ]
  %10 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv110, i64 %index169
  %wide.load170 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = sub nsw <4 x i32> %wide.load170, %broadcast.splat
  store <4 x i32> %11, ptr %10, align 4, !tbaa !5
  %index.next171 = add nuw i64 %index169, 4
  %12 = icmp eq i64 %index.next171, %n.vec167
  br i1 %12, label %middle.block172, label %vector.body168, !llvm.loop !46

middle.block172:                                  ; preds = %vector.body168
  br i1 %cmp.n173, label %for.inc31, label %for.body17.preheader188

for.body17.preheader188:                          ; preds = %for.body17.preheader, %middle.block172
  %indvars.iv105.ph = phi i64 [ 0, %for.body17.preheader ], [ %n.vec167, %middle.block172 ]
  br label %for.body17

for.body17:                                       ; preds = %for.body17.preheader188, %for.body17
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body17 ], [ %indvars.iv105.ph, %for.body17.preheader188 ]
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv110, i64 %indvars.iv105
  %13 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %sub22 = sub nsw i32 %13, %spec.select.lcssa
  store i32 %sub22, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count113
  br i1 %exitcond109.not, label %for.inc31, label %for.body17, !llvm.loop !47

for.inc31:                                        ; preds = %for.body17, %middle.block172, %for.end
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %for.cond38.preheader.preheader, label %for.cond1.preheader, !llvm.loop !48

for.cond38.preheader:                             ; preds = %for.cond38.preheader.preheader, %for.inc78
  %indvars.iv125 = phi i64 [ 0, %for.cond38.preheader.preheader ], [ %indvars.iv.next126, %for.inc78 ]
  br label %for.body41

for.body41:                                       ; preds = %for.cond38.preheader, %for.inc56
  %indvars.iv115 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next116, %for.inc56 ]
  %min.290 = phi i32 [ 1000, %for.cond38.preheader ], [ %min.4, %for.inc56 ]
  %arrayidx45 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv115, i64 %indvars.iv125
  %14 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp slt i32 %14, %min.290
  br i1 %cmp46, label %if.then47, label %for.inc56

if.then47:                                        ; preds = %for.body41
  %cmp52 = icmp eq i32 %14, 0
  br i1 %cmp52, label %for.inc78, label %for.inc56

for.inc56:                                        ; preds = %for.body41, %if.then47
  %min.4 = phi i32 [ %14, %if.then47 ], [ %min.290, %for.body41 ]
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count128
  br i1 %exitcond119.not, label %for.end58, label %for.body41, !llvm.loop !49

for.end58:                                        ; preds = %for.inc56
  %cmp59.not = icmp eq i32 %min.4, 0
  br i1 %cmp59.not, label %for.inc78, label %for.body64

for.body64:                                       ; preds = %for.end58, %for.body64
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.body64 ], [ 0, %for.end58 ]
  %arrayidx68 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv120, i64 %indvars.iv125
  %15 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %sub69 = sub nsw i32 %15, %min.4
  store i32 %sub69, ptr %arrayidx68, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count128
  br i1 %exitcond124.not, label %for.inc78, label %for.body64, !llvm.loop !50

for.inc78:                                        ; preds = %if.then47, %for.body64, %for.end58
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %for.end80, label %for.cond38.preheader, !llvm.loop !51

for.cond85.preheader.thread:                      ; preds = %tailrecurse
  %16 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.end128

for.end80:                                        ; preds = %for.inc78
  %17 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  switch i32 %n.tr, label %for.body87.preheader [
    i32 2, label %cleanup
    i32 1, label %for.end128
  ]

for.body87.preheader:                             ; preds = %for.end80
  %wide.trip.count136 = zext i32 %indvars.iv134 to i64
  br label %for.body87

for.cond109.preheader.us.preheader:               ; preds = %for.body87
  %wide.trip.count148 = zext nneg i32 %n.tr to i64
  %min.iters.check = icmp ult i64 %4, 4
  %n.vec = and i64 %4, -4
  %18 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %for.cond109.preheader.us

for.cond109.preheader.us:                         ; preds = %for.cond109.preheader.us.preheader, %for.cond109.for.inc126_crit_edge.us
  %indvars.iv145 = phi i64 [ 2, %for.cond109.preheader.us.preheader ], [ %indvars.iv.next146, %for.cond109.for.inc126_crit_edge.us ]
  br i1 %min.iters.check, label %for.body112.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond109.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond109.preheader.us ]
  %offset.idx = or disjoint i64 %index, 2
  %19 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv145, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %19, align 4, !tbaa !5
  %20 = or disjoint i64 %index, 1
  %21 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv145, i64 %20
  store <4 x i32> %wide.load, ptr %21, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond109.for.inc126_crit_edge.us, label %for.body112.us.preheader

for.body112.us.preheader:                         ; preds = %for.cond109.preheader.us, %middle.block
  %indvars.iv139.ph = phi i64 [ 2, %for.cond109.preheader.us ], [ %18, %middle.block ]
  br label %for.body112.us

for.body112.us:                                   ; preds = %for.body112.us.preheader, %for.body112.us
  %indvars.iv139 = phi i64 [ %indvars.iv.next140, %for.body112.us ], [ %indvars.iv139.ph, %for.body112.us.preheader ]
  %arrayidx116.us = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv145, i64 %indvars.iv139
  %23 = load i32, ptr %arrayidx116.us, align 4, !tbaa !5
  %24 = add nsw i64 %indvars.iv139, -1
  %arrayidx122.us = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv145, i64 %24
  store i32 %23, ptr %arrayidx122.us, align 4, !tbaa !5
  %indvars.iv.next140 = add nuw nsw i64 %indvars.iv139, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next140, %wide.trip.count148
  br i1 %exitcond144.not, label %for.cond109.for.inc126_crit_edge.us, label %for.body112.us, !llvm.loop !53

for.cond109.for.inc126_crit_edge.us:              ; preds = %for.body112.us, %middle.block
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %for.end128, label %for.cond109.preheader.us, !llvm.loop !54

for.body87:                                       ; preds = %for.body87.preheader, %for.body87
  %indvars.iv130 = phi i64 [ 2, %for.body87.preheader ], [ %indvars.iv.next131, %for.body87 ]
  %arrayidx90 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 0, i64 %indvars.iv130
  %25 = load i32, ptr %arrayidx90, align 4, !tbaa !5
  %26 = add nsw i64 %indvars.iv130, -1
  %arrayidx94 = getelementptr inbounds [200 x i32], ptr %num, i64 0, i64 %26
  store i32 %25, ptr %arrayidx94, align 4, !tbaa !5
  %arrayidx96 = getelementptr inbounds nuw [200 x i32], ptr %num, i64 %indvars.iv130
  %27 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx100 = getelementptr inbounds [200 x i32], ptr %num, i64 %26
  store i32 %27, ptr %arrayidx100, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count136
  br i1 %exitcond137.not, label %for.cond109.preheader.us.preheader, label %for.body87, !llvm.loop !55

for.end128:                                       ; preds = %for.cond109.for.inc126_crit_edge.us, %for.end80, %for.cond85.preheader.thread
  %28 = phi i32 [ %16, %for.cond85.preheader.thread ], [ %17, %for.end80 ], [ %17, %for.cond109.for.inc126_crit_edge.us ]
  %sub.le151154157160 = add nsw i32 %n.tr, -1
  %add130 = add nsw i32 %28, %accumulator.tr
  %indvars.iv.next135 = add i32 %indvars.iv134, -1
  br label %tailrecurse

cleanup:                                          ; preds = %for.end80
  %accumulator.ret.tr = add nsw i32 %17, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
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
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !10, !11, !43}
!46 = distinct !{!46, !10, !11, !43, !44}
!47 = distinct !{!47, !10, !11, !43}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11, !43, !44}
!53 = distinct !{!53, !10, !11, !43}
!54 = distinct !{!54, !10, !11}
!55 = distinct !{!55, !10, !11}
