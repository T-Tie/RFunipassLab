; ModuleID = '<stdin>'
source_filename = "/tmp/tmplnjml7_z.cpp"
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
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %ch = alloca [500 x i8], align 16
  %record = alloca [250 x ptr], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %ch) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %record) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable7.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr8.i = getelementptr i8, ptr %vtable7.i, i64 -24
  %vbase.offset9.i = load i64, ptr %vbase.offset.ptr8.i, align 8
  %add.ptr10.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset9.i
  %_M_width.i17.i = getelementptr inbounds nuw i8, ptr %add.ptr10.i, i64 16
  %0 = load i64, ptr %_M_width.i17.i, align 8, !tbaa !8
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %ch, i64 noundef 500)
  %vtable12.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr13.i = getelementptr i8, ptr %vtable12.i, i64 -24
  %vbase.offset14.i = load i64, ptr %vbase.offset.ptr13.i, align 8
  %add.ptr15.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset14.i
  %_M_streambuf_state.i.i18.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 32
  %1 = load i32, ptr %_M_streambuf_state.i.i18.i, align 8, !tbaa !21
  %cmp.i.i = icmp eq i32 %1, 0
  %2 = add i64 %0, -501
  %or.cond.i = icmp ult i64 %2, -500
  %or.cond84 = select i1 %cmp.i.i, i1 %or.cond.i, i1 false
  br i1 %or.cond84, label %if.then19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

if.then19.i:                                      ; preds = %entry
  %_M_streambuf.i.i = getelementptr inbounds nuw i8, ptr %add.ptr15.i, i64 232
  %3 = load ptr, ptr %_M_streambuf.i.i, align 8, !tbaa !22
  %_M_in_cur.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %4 = load ptr, ptr %_M_in_cur.i.i.i, align 8, !tbaa !30
  %_M_in_end.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %5 = load ptr, ptr %_M_in_end.i.i.i, align 8, !tbaa !33
  %cmp.i19.i = icmp ult ptr %4, %5
  br i1 %cmp.i19.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, !prof !34

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i: ; preds = %if.then19.i
  %vtable.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i, i64 72
  %6 = load ptr, ptr %vfn.i.i, align 8
  %call5.i.i = call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(64) %3)
  %cmp.i20.i = icmp eq i32 %call5.i.i, -1
  br i1 %cmp.i20.i, label %if.then28.i, label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, !prof !35

if.then28.i:                                      ; preds = %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i
  %vtable29.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr30.i = getelementptr i8, ptr %vtable29.i, i64 -24
  %vbase.offset31.i = load i64, ptr %vbase.offset.ptr30.i, align 8
  %add.ptr32.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset31.i
  %_M_streambuf_state.i.i21.i = getelementptr inbounds nuw i8, ptr %add.ptr32.i, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i21.i, align 8, !tbaa !21
  %or.i.i22.i = or i32 %7, 2
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr32.i, i32 noundef %or.i.i22.i)
  br label %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit

_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit: ; preds = %entry, %if.then19.i, %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv.exit.i, %if.then28.i
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %ch) #7
  %sext = shl i64 %call3, 32
  %idx.ext = ashr exact i64 %sext, 32
  %add.ptr = getelementptr i8, ptr %ch, i64 %idx.ext
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %cmp93 = icmp sgt i64 %idx.ext, 1
  br i1 %cmp93, label %for.body.lr.ph, label %if.then46

for.body.lr.ph:                                   ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit
  %8 = load i32, ptr %n, align 4
  %.fr = freeze i32 %8
  %cmp1585 = icmp sgt i32 %.fr, 0
  %cmp25 = icmp eq i32 %.fr, 0
  %inc27.neg = sext i1 %cmp25 to i32
  br i1 %cmp1585, label %for.body.us.preheader, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph
  %9 = trunc i64 %call3 to i32
  %10 = select i1 %cmp25, i32 %9, i32 1
  br label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count = zext nneg i32 %.fr to i64
  %min.iters.check = icmp ult i32 %.fr, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc42.us
  %d.097.us = phi i32 [ %d.1.us, %for.inc42.us ], [ 0, %for.body.us.preheader ]
  %num.096.us = phi i32 [ %num.1.us, %for.inc42.us ], [ 1, %for.body.us.preheader ]
  %p.094.us = phi ptr [ %add.ptr7.us, %for.inc42.us ], [ %ch, %for.body.us.preheader ]
  %add.ptr7.us = getelementptr inbounds nuw i8, ptr %p.094.us, i64 1
  %cmp1289.us = icmp ult ptr %add.ptr7.us, %add.ptr
  br i1 %cmp1289.us, label %for.cond14.preheader.us.us, label %for.end30.us

for.end30.us:                                     ; preds = %for.cond14.for.end_crit_edge.us.us, %for.body.us
  %r.0.lcssa.us = phi i32 [ 1, %for.body.us ], [ %spec.select29.us.us, %for.cond14.for.end_crit_edge.us.us ]
  %cmp31.us = icmp sgt i32 %r.0.lcssa.us, %num.096.us
  br i1 %cmp31.us, label %if.then32.us, label %if.else.us

if.else.us:                                       ; preds = %for.end30.us
  %cmp34.us = icmp eq i32 %r.0.lcssa.us, %num.096.us
  %cmp35.us = icmp sgt i32 %num.096.us, 1
  %or.cond.us = and i1 %cmp35.us, %cmp34.us
  br i1 %or.cond.us, label %if.then36.us, label %for.inc42.us

if.then36.us:                                     ; preds = %if.else.us
  %idxprom37.us = sext i32 %d.097.us to i64
  %arrayidx38.us = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom37.us
  store ptr %p.094.us, ptr %arrayidx38.us, align 8, !tbaa !36
  %inc39.us = add nsw i32 %d.097.us, 1
  br label %for.inc42.us

if.then32.us:                                     ; preds = %for.end30.us
  store ptr %p.094.us, ptr %record, align 16, !tbaa !36
  br label %for.inc42.us

for.inc42.us:                                     ; preds = %if.then32.us, %if.then36.us, %if.else.us
  %num.1.us = phi i32 [ %r.0.lcssa.us, %if.then32.us ], [ %num.096.us, %if.then36.us ], [ %num.096.us, %if.else.us ]
  %d.1.us = phi i32 [ 1, %if.then32.us ], [ %inc39.us, %if.then36.us ], [ %d.097.us, %if.else.us ]
  %cmp.us = icmp ult ptr %add.ptr7.us, %add.ptr6
  br i1 %cmp.us, label %for.body.us, label %for.end44, !llvm.loop !37

for.cond14.preheader.us.us:                       ; preds = %for.body.us, %for.cond14.for.end_crit_edge.us.us
  %r.091.us.us = phi i32 [ %spec.select29.us.us, %for.cond14.for.end_crit_edge.us.us ], [ 1, %for.body.us ]
  %q.090.us.us = phi ptr [ %incdec.ptr.us.us, %for.cond14.for.end_crit_edge.us.us ], [ %add.ptr7.us, %for.body.us ]
  br i1 %min.iters.check, label %for.body16.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond14.preheader.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond14.preheader.us.us ]
  %vec.phi = phi <4 x i32> [ %15, %vector.body ], [ zeroinitializer, %for.cond14.preheader.us.us ]
  %11 = getelementptr inbounds nuw i8, ptr %q.090.us.us, i64 %index
  %wide.load = load <4 x i8>, ptr %11, align 1, !tbaa !40
  %12 = getelementptr inbounds nuw i8, ptr %p.094.us, i64 %index
  %wide.load125 = load <4 x i8>, ptr %12, align 1, !tbaa !40
  %13 = icmp eq <4 x i8> %wide.load, %wide.load125
  %14 = zext <4 x i1> %13 to <4 x i32>
  %15 = add <4 x i32> %vec.phi, %14
  %index.next = add nuw i64 %index, 4
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %17 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %15)
  br i1 %cmp.n, label %for.cond14.for.end_crit_edge.us.us, label %for.body16.us.us.preheader

for.body16.us.us.preheader:                       ; preds = %for.cond14.preheader.us.us, %middle.block
  %indvars.iv108.ph = phi i64 [ 0, %for.cond14.preheader.us.us ], [ %n.vec, %middle.block ]
  %k.086.us.us.ph = phi i32 [ 0, %for.cond14.preheader.us.us ], [ %17, %middle.block ]
  br label %for.body16.us.us

for.body16.us.us:                                 ; preds = %for.body16.us.us.preheader, %for.body16.us.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.body16.us.us ], [ %indvars.iv108.ph, %for.body16.us.us.preheader ]
  %k.086.us.us = phi i32 [ %spec.select.us.us, %for.body16.us.us ], [ %k.086.us.us.ph, %for.body16.us.us.preheader ]
  %add.ptr18.us.us = getelementptr inbounds nuw i8, ptr %q.090.us.us, i64 %indvars.iv108
  %18 = load i8, ptr %add.ptr18.us.us, align 1, !tbaa !40
  %add.ptr21.us.us = getelementptr inbounds nuw i8, ptr %p.094.us, i64 %indvars.iv108
  %19 = load i8, ptr %add.ptr21.us.us, align 1, !tbaa !40
  %cmp23.us.us = icmp eq i8 %18, %19
  %inc.us.us = zext i1 %cmp23.us.us to i32
  %spec.select.us.us = add nuw nsw i32 %k.086.us.us, %inc.us.us
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.for.end_crit_edge.us.us, label %for.body16.us.us, !llvm.loop !44

for.cond14.for.end_crit_edge.us.us:               ; preds = %for.body16.us.us, %middle.block
  %spec.select.us.us.lcssa = phi i32 [ %17, %middle.block ], [ %spec.select.us.us, %for.body16.us.us ]
  %cmp25.us.us = icmp eq i32 %spec.select.us.us.lcssa, %.fr
  %inc27.us.us = zext i1 %cmp25.us.us to i32
  %spec.select29.us.us = add nuw nsw i32 %r.091.us.us, %inc27.us.us
  %incdec.ptr.us.us = getelementptr inbounds nuw i8, ptr %q.090.us.us, i64 1
  %exitcond111.not = icmp eq ptr %incdec.ptr.us.us, %add.ptr
  br i1 %exitcond111.not, label %for.end30.us, label %for.cond14.preheader.us.us, !llvm.loop !45

for.body:                                         ; preds = %for.body.preheader, %for.inc42
  %indvars.iv = phi i32 [ %10, %for.body.preheader ], [ %indvars.iv.next, %for.inc42 ]
  %d.097 = phi i32 [ 0, %for.body.preheader ], [ %d.1, %for.inc42 ]
  %num.096 = phi i32 [ 1, %for.body.preheader ], [ %num.1, %for.inc42 ]
  %p.094 = phi ptr [ %ch, %for.body.preheader ], [ %add.ptr7, %for.inc42 ]
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %p.094, i64 1
  %cmp1289 = icmp ult ptr %add.ptr7, %add.ptr
  %spec.select = select i1 %cmp1289, i32 %indvars.iv, i32 1
  %cmp31 = icmp sgt i32 %spec.select, %num.096
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %for.body
  store ptr %p.094, ptr %record, align 16, !tbaa !36
  br label %for.inc42

if.else:                                          ; preds = %for.body
  %cmp34 = icmp eq i32 %spec.select, %num.096
  %cmp35 = icmp sgt i32 %num.096, 1
  %or.cond = and i1 %cmp35, %cmp34
  br i1 %or.cond, label %if.then36, label %for.inc42

if.then36:                                        ; preds = %if.else
  %idxprom37 = sext i32 %d.097 to i64
  %arrayidx38 = getelementptr inbounds [250 x ptr], ptr %record, i64 0, i64 %idxprom37
  store ptr %p.094, ptr %arrayidx38, align 8, !tbaa !36
  %inc39 = add nsw i32 %d.097, 1
  br label %for.inc42

for.inc42:                                        ; preds = %if.then32, %if.then36, %if.else
  %num.1 = phi i32 [ %spec.select, %if.then32 ], [ %num.096, %if.then36 ], [ %num.096, %if.else ]
  %d.1 = phi i32 [ 1, %if.then32 ], [ %inc39, %if.then36 ], [ %d.097, %if.else ]
  %cmp = icmp ult ptr %add.ptr7, %add.ptr6
  %indvars.iv.next = add i32 %indvars.iv, %inc27.neg
  br i1 %cmp, label %for.body, label %for.end44, !llvm.loop !37

for.end44:                                        ; preds = %for.inc42, %for.inc42.us
  %num.0.lcssa = phi i32 [ %num.1.us, %for.inc42.us ], [ %num.1, %for.inc42 ]
  %d.0.lcssa = phi i32 [ %d.1.us, %for.inc42.us ], [ %d.1, %for.inc42 ]
  %cmp45 = icmp eq i32 %num.0.lcssa, 1
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_.exit, %for.end44
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i38 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i39 = getelementptr i8, ptr %vtable.i38, i64 -24
  %vbase.offset.i40 = load i64, ptr %vbase.offset.ptr.i39, align 8
  %add.ptr.i41 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i40
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i41, i64 240
  %20 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !46
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then46
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then46
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 56
  %21 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !47
  %tobool.not.i1.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 67
  %22 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %20)
  %vtable.i.i.i = load ptr, ptr %20, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %23 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %23(ptr noundef nonnull align 8 dereferenceable(570) %20, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %22, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i42 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i42)
  br label %if.end70

if.else49:                                        ; preds = %for.end44
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %num.0.lcssa)
  %vtable.i44 = load ptr, ptr %call50, align 8, !tbaa !5
  %vbase.offset.ptr.i45 = getelementptr i8, ptr %vtable.i44, i64 -24
  %vbase.offset.i46 = load i64, ptr %vbase.offset.ptr.i45, align 8
  %add.ptr.i47 = getelementptr inbounds i8, ptr %call50, i64 %vbase.offset.i46
  %_M_ctype.i.i48 = getelementptr inbounds nuw i8, ptr %add.ptr.i47, i64 240
  %24 = load ptr, ptr %_M_ctype.i.i48, align 8, !tbaa !46
  %tobool.not.i.i.i49 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i49, label %if.then.i.i.i62, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50

if.then.i.i.i62:                                  ; preds = %if.else49
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50: ; preds = %if.else49
  %_M_widen_ok.i.i.i51 = getelementptr inbounds nuw i8, ptr %24, i64 56
  %25 = load i8, ptr %_M_widen_ok.i.i.i51, align 8, !tbaa !47
  %tobool.not.i1.i.i52 = icmp eq i8 %25, 0
  br i1 %tobool.not.i1.i.i52, label %if.end.i.i.i58, label %if.then.i2.i.i53

if.then.i2.i.i53:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50
  %arrayidx.i.i.i54 = getelementptr inbounds nuw i8, ptr %24, i64 67
  %26 = load i8, ptr %arrayidx.i.i.i54, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

if.end.i.i.i58:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %24)
  %vtable.i.i.i59 = load ptr, ptr %24, align 8, !tbaa !5
  %vfn.i.i.i60 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i59, i64 48
  %27 = load ptr, ptr %vfn.i.i.i60, align 8
  %call.i.i.i61 = call noundef signext i8 %27(ptr noundef nonnull align 8 dereferenceable(570) %24, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63: ; preds = %if.then.i2.i.i53, %if.end.i.i.i58
  %retval.0.i.i.i55 = phi i8 [ %26, %if.then.i2.i.i53 ], [ %call.i.i.i61, %if.end.i.i.i58 ]
  %call1.i56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call50, i8 noundef signext %retval.0.i.i.i55)
  %call.i.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i56)
  %cmp53105 = icmp sgt i32 %d.0.lcssa, 0
  br i1 %cmp53105, label %for.cond55.preheader.preheader, label %if.end70

for.cond55.preheader.preheader:                   ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63
  %wide.trip.count118 = zext nneg i32 %d.0.lcssa to i64
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond55.preheader.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83
  %indvars.iv115 = phi i64 [ 0, %for.cond55.preheader.preheader ], [ %indvars.iv.next116, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83 ]
  %28 = load i32, ptr %n, align 4, !tbaa !53
  %cmp56102 = icmp sgt i32 %28, 0
  br i1 %cmp56102, label %for.body57.lr.ph, label %for.end65

for.body57.lr.ph:                                 ; preds = %for.cond55.preheader
  %arrayidx59 = getelementptr inbounds nuw [250 x ptr], ptr %record, i64 0, i64 %indvars.iv115
  %29 = load ptr, ptr %arrayidx59, align 8, !tbaa !36
  br label %for.body57

for.body57:                                       ; preds = %for.body57.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv112 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next113, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %add.ptr61 = getelementptr inbounds nuw i8, ptr %29, i64 %indvars.iv112
  %30 = load i8, ptr %add.ptr61, align 1, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %30, ptr %__c.addr.i, align 1, !tbaa !40
  %vtable.i31 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i33
  %31 = load i64, ptr %gep, align 8, !tbaa !8
  %cmp.not.i = icmp eq i64 %31, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body57
  %call1.i36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body57
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %30)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %32 = load i32, ptr %n, align 4, !tbaa !53
  %33 = sext i32 %32 to i64
  %cmp56 = icmp slt i64 %indvars.iv.next113, %33
  br i1 %cmp56, label %for.body57, label %for.end65, !llvm.loop !54

for.end65:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond55.preheader
  %vtable.i64 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i65 = getelementptr i8, ptr %vtable.i64, i64 -24
  %vbase.offset.i66 = load i64, ptr %vbase.offset.ptr.i65, align 8
  %gep104 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i66
  %34 = load ptr, ptr %gep104, align 8, !tbaa !46
  %tobool.not.i.i.i69 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i69, label %if.then.i.i.i82, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70

if.then.i.i.i82:                                  ; preds = %for.end65
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70: ; preds = %for.end65
  %_M_widen_ok.i.i.i71 = getelementptr inbounds nuw i8, ptr %34, i64 56
  %35 = load i8, ptr %_M_widen_ok.i.i.i71, align 8, !tbaa !47
  %tobool.not.i1.i.i72 = icmp eq i8 %35, 0
  br i1 %tobool.not.i1.i.i72, label %if.end.i.i.i78, label %if.then.i2.i.i73

if.then.i2.i.i73:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  %arrayidx.i.i.i74 = getelementptr inbounds nuw i8, ptr %34, i64 67
  %36 = load i8, ptr %arrayidx.i.i.i74, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

if.end.i.i.i78:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %34)
  %vtable.i.i.i79 = load ptr, ptr %34, align 8, !tbaa !5
  %vfn.i.i.i80 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i79, i64 48
  %37 = load ptr, ptr %vfn.i.i.i80, align 8
  %call.i.i.i81 = call noundef signext i8 %37(ptr noundef nonnull align 8 dereferenceable(570) %34, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83: ; preds = %if.then.i2.i.i73, %if.end.i.i.i78
  %retval.0.i.i.i75 = phi i8 [ %36, %if.then.i2.i.i73 ], [ %call.i.i.i81, %if.end.i.i.i78 ]
  %call1.i76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i75)
  %call.i.i77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i76)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count118
  br i1 %exitcond119.not, label %if.end70, label %for.cond55.preheader, !llvm.loop !55

if.end70:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit83, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit63, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %record) #6
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %ch) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!9, !13, i64 32}
!22 = !{!23, !26, i64 232}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !24, i64 216, !11, i64 224, !25, i64 225, !26, i64 232, !27, i64 240, !28, i64 248, !29, i64 256}
!24 = !{!"p1 _ZTSSo", !15, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!27 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!28 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!30 = !{!31, !32, i64 16}
!31 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !19, i64 56}
!32 = !{!"p1 omnipotent char", !15, i64 0}
!33 = !{!31, !32, i64 24}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!36 = !{!32, !32, i64 0}
!37 = distinct !{!37, !38, !39}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = !{!11, !11, i64 0}
!41 = distinct !{!41, !38, !39, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !38, !39, !42}
!45 = distinct !{!45, !38, !39}
!46 = !{!23, !27, i64 240}
!47 = !{!48, !11, i64 56}
!48 = !{!"_ZTSSt5ctypeIcE", !49, i64 0, !50, i64 16, !25, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!49 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!50 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!51 = !{!"p1 int", !15, i64 0}
!52 = !{!"p1 short", !15, i64 0}
!53 = !{!17, !17, i64 0}
!54 = distinct !{!54, !38, !39}
!55 = distinct !{!55, !38, !39}
