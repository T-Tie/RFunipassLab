; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv1yohbld.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not39 = icmp slt i32 %0, 1
  %1 = load i32, ptr %y1, align 4
  %2 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp.not39, i1 true, i1 %2
  br i1 %or.cond, label %for.end10, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc8 ], [ 1, %entry ]
  %cmp3.not37 = icmp slt i32 %4, 1
  br i1 %cmp3.not37, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv65, %9
  br i1 %cmp.not.not, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14.not43 = icmp slt i32 %10, 1
  %11 = load i32, ptr %y2, align 4
  %12 = icmp slt i32 %11, 1
  %or.cond105 = select i1 %cmp14.not43, i1 true, i1 %12
  br i1 %or.cond105, label %for.cond30.preheader, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %28, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %29, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc27 ], [ 1, %for.end10 ]
  %cmp17.not41 = icmp slt i32 %14, 1
  br i1 %cmp17.not41, label %for.inc27, label %for.body18

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31.not49 = icmp slt i32 %15, 1
  br i1 %cmp31.not49, label %for.end92, label %for.cond33.preheader.lr.ph

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34.not47 = icmp slt i32 %16, 1
  %17 = load i32, ptr %y1, align 4
  br i1 %cmp34.not47, label %for.end92, label %for.cond33.preheader.lr.ph.split

for.cond33.preheader.lr.ph.split:                 ; preds = %for.cond33.preheader.lr.ph
  %cmp41.not45 = icmp slt i32 %17, 1
  br i1 %cmp41.not45, label %for.cond33.preheader.us51.preheader, label %for.cond33.preheader.preheader

for.cond33.preheader.preheader:                   ; preds = %for.cond33.preheader.lr.ph.split
  %18 = add nuw i32 %17, 1
  %19 = add nuw i32 %16, 1
  %20 = add nuw i32 %15, 1
  %wide.trip.count85 = zext i32 %20 to i64
  %wide.trip.count80 = zext i32 %19 to i64
  %wide.trip.count = zext i32 %18 to i64
  %21 = zext nneg i32 %17 to i64
  %min.iters.check = icmp ult i32 %17, 4
  %n.vec = and i64 %21, 2147483644
  %22 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %21
  br label %for.cond33.preheader

for.cond33.preheader.us51.preheader:              ; preds = %for.cond33.preheader.lr.ph.split
  %23 = zext nneg i32 %16 to i64
  %24 = shl nuw nsw i64 %23, 2
  %wide.trip.count90 = zext nneg i32 %15 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %c, i64 408
  br label %for.cond33.preheader.us51

for.cond33.preheader.us51:                        ; preds = %for.cond33.preheader.us51.preheader, %for.cond33.preheader.us51
  %indvar = phi i64 [ 0, %for.cond33.preheader.us51.preheader ], [ %indvar.next, %for.cond33.preheader.us51 ]
  %25 = mul nuw nsw i64 %indvar, 404
  %gep = getelementptr i8, ptr %invariant.gep, i64 %25
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %gep, i8 0, i64 %24, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond91.not = icmp eq i64 %indvar.next, %wide.trip.count90
  br i1 %exitcond91.not, label %for.cond71.preheader.lr.ph, label %for.cond33.preheader.us51, !llvm.loop !14

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body18 ], [ 1, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv71, i64 %indvars.iv68
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %26 = load i32, ptr %y2, align 4, !tbaa !5
  %27 = sext i32 %26 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv68, %27
  br i1 %cmp17.not.not, label %for.body18, label %for.inc27.loopexit, !llvm.loop !15

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre98 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %28 = phi i32 [ %.pre98, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %29 = phi i32 [ %26, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %30 = sext i32 %28 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv71, %30
  br i1 %cmp14.not.not, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !16

for.cond33.preheader:                             ; preds = %for.cond33.preheader.preheader, %for.cond33.for.inc65_crit_edge.split
  %indvars.iv82 = phi i64 [ 1, %for.cond33.preheader.preheader ], [ %indvars.iv.next83, %for.cond33.for.inc65_crit_edge.split ]
  br label %for.body35

for.cond68.preheader:                             ; preds = %for.cond33.for.inc65_crit_edge.split
  %.pr = load i32, ptr %y2, align 4
  %31 = icmp slt i32 %.pr, 1
  br i1 %31, label %for.end92, label %for.cond71.preheader.preheader

for.cond71.preheader.preheader:                   ; preds = %for.cond71.preheader.lr.ph, %for.cond68.preheader
  %.ph = phi i32 [ %.pr, %for.cond68.preheader ], [ %.pr.old, %for.cond71.preheader.lr.ph ]
  br label %for.cond71.preheader

for.cond71.preheader.lr.ph:                       ; preds = %for.cond33.preheader.us51
  %.pr.old = load i32, ptr %y2, align 4, !tbaa !5
  %.old = icmp slt i32 %.pr.old, 1
  br i1 %.old, label %for.end92, label %for.cond71.preheader.preheader

for.body35:                                       ; preds = %for.cond33.preheader, %for.cond40.for.inc62_crit_edge
  %indvars.iv77 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next78, %for.cond40.for.inc62_crit_edge ]
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv82, i64 %indvars.iv77
  br i1 %min.iters.check, label %for.body42.preheader, label %vector.body

vector.body:                                      ; preds = %for.body35, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body35 ]
  %vec.phi = phi <4 x i32> [ %49, %vector.body ], [ zeroinitializer, %for.body35 ]
  %offset.idx = or disjoint i64 %index, 1
  %32 = or disjoint i64 %index, 2
  %33 = or disjoint i64 %index, 3
  %34 = add i64 %index, 4
  %35 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %35, align 4, !tbaa !5
  %36 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %offset.idx, i64 %indvars.iv77
  %37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %32, i64 %indvars.iv77
  %38 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %33, i64 %indvars.iv77
  %39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %34, i64 %indvars.iv77
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = load i32, ptr %39, align 4, !tbaa !5
  %44 = insertelement <4 x i32> poison, i32 %40, i64 0
  %45 = insertelement <4 x i32> %44, i32 %41, i64 1
  %46 = insertelement <4 x i32> %45, i32 %42, i64 2
  %47 = insertelement <4 x i32> %46, i32 %43, i64 3
  %48 = mul nsw <4 x i32> %47, %wide.load
  %49 = add <4 x i32> %48, %vec.phi
  %index.next = add nuw i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %51 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %49)
  br i1 %cmp.n, label %for.cond40.for.inc62_crit_edge, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body35, %middle.block
  %indvars.iv74.ph = phi i64 [ 1, %for.body35 ], [ %22, %middle.block ]
  %.ph109 = phi i32 [ 0, %for.body35 ], [ %51, %middle.block ]
  br label %for.body42

for.body42:                                       ; preds = %for.body42.preheader, %for.body42
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body42 ], [ %indvars.iv74.ph, %for.body42.preheader ]
  %52 = phi i32 [ %add, %for.body42 ], [ %.ph109, %for.body42.preheader ]
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv74
  %53 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv74, i64 %indvars.iv77
  %54 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %54, %53
  %add = add nsw i32 %mul, %52
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not, label %for.cond40.for.inc62_crit_edge, label %for.body42, !llvm.loop !20

for.cond40.for.inc62_crit_edge:                   ; preds = %for.body42, %middle.block
  %add.lcssa = phi i32 [ %51, %middle.block ], [ %add, %for.body42 ]
  store i32 %add.lcssa, ptr %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond33.for.inc65_crit_edge.split, label %for.body35, !llvm.loop !21

for.cond33.for.inc65_crit_edge.split:             ; preds = %for.cond40.for.inc62_crit_edge
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %for.cond68.preheader, label %for.cond33.preheader, !llvm.loop !14

for.cond71.preheader:                             ; preds = %for.cond71.preheader.preheader, %for.inc90
  %55 = phi i32 [ %66, %for.inc90 ], [ %15, %for.cond71.preheader.preheader ]
  %56 = phi i32 [ %67, %for.inc90 ], [ %.ph, %for.cond71.preheader.preheader ]
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc90 ], [ 1, %for.cond71.preheader.preheader ]
  %cmp72.not55 = icmp slt i32 %56, 1
  br i1 %cmp72.not55, label %for.inc90, label %for.body73

for.body73:                                       ; preds = %for.cond71.preheader, %for.inc87
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.inc87 ], [ 1, %for.cond71.preheader ]
  %57 = phi i32 [ %64, %for.inc87 ], [ %56, %for.cond71.preheader ]
  %58 = zext i32 %57 to i64
  %cmp74.not = icmp eq i64 %indvars.iv92, %58
  %arrayidx84 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv95, i64 %indvars.iv92
  %59 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call85 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %59)
  br i1 %cmp74.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body73
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call85, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc87

if.else:                                          ; preds = %for.body73
  %vtable.i = load ptr, ptr %call85, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call85, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %60 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %60, i64 56
  %61 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !42
  %tobool.not.i1.i.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %60, i64 67
  %62 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %60)
  %vtable.i.i.i = load ptr, ptr %60, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %63 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %63(ptr noundef nonnull align 8 dereferenceable(570) %60, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %62, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call85, i8 noundef signext %retval.0.i.i.i)
  %call.i.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i35)
  br label %for.inc87

for.inc87:                                        ; preds = %if.then, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %64 = load i32, ptr %y2, align 4, !tbaa !5
  %65 = sext i32 %64 to i64
  %cmp72.not.not = icmp slt i64 %indvars.iv92, %65
  br i1 %cmp72.not.not, label %for.body73, label %for.inc90.loopexit, !llvm.loop !49

for.inc90.loopexit:                               ; preds = %for.inc87
  %.pre99 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc90

for.inc90:                                        ; preds = %for.inc90.loopexit, %for.cond71.preheader
  %66 = phi i32 [ %.pre99, %for.inc90.loopexit ], [ %55, %for.cond71.preheader ]
  %67 = phi i32 [ %64, %for.inc90.loopexit ], [ %56, %for.cond71.preheader ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %68 = sext i32 %66 to i64
  %cmp69.not.not = icmp slt i64 %indvars.iv95, %68
  br i1 %cmp69.not.not, label %for.cond71.preheader, label %for.end92, !llvm.loop !50

for.end92:                                        ; preds = %for.inc90, %for.cond33.preheader.lr.ph, %for.cond30.preheader, %for.cond71.preheader.lr.ph, %for.cond68.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !13}
!17 = distinct !{!17, !10, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !11, !18}
!21 = distinct !{!21, !10, !11}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !39, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !36, i64 216, !7, i64 224, !37, i64 225, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256}
!26 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !31, i64 0, !27, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !31, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !31, i64 0}
!36 = !{!"p1 _ZTSSo", !31, i64 0}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 0}
!39 = !{!"p1 _ZTSSt5ctypeIcE", !31, i64 0}
!40 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!41 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!42 = !{!43, !7, i64 56}
!43 = !{!"_ZTSSt5ctypeIcE", !44, i64 0, !45, i64 16, !37, i64 24, !46, i64 32, !46, i64 40, !47, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!44 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!45 = !{!"p1 _ZTS15__locale_struct", !31, i64 0}
!46 = !{!"p1 int", !31, i64 0}
!47 = !{!"p1 short", !31, i64 0}
!48 = !{!7, !7, i64 0}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11, !13}
