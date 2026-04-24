; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqxzw73_b.cpp"
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
  %a = alloca [501 x i8], align 16
  %n = alloca i32, align 4
  %f = alloca [501 x [5 x i8]], align 16
  %g = alloca [501 x i32], align 16
  %flag = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv194 = phi i32 [ %indvars.iv.next195, %while.cond ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %call2 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %add.ptr = getelementptr inbounds nuw i8, ptr %a, i64 %indvars.iv
  store i8 %conv, ptr %add.ptr, align 1, !tbaa !5
  %sext.mask = and i32 %call2, 255
  %cmp = icmp eq i32 %sext.mask, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next195 = add i32 %indvars.iv194, 1
  br i1 %cmp, label %while.end, label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %vtable.i53 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i54 = getelementptr i8, ptr %vtable.i53, i64 -24
  %vbase.offset.i55 = load i64, ptr %vbase.offset.ptr.i54, align 8
  %add.ptr.i56 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i55
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i56, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !13
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !32
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !11
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i57 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i57)
  call void @llvm.lifetime.start.p0(i64 2505, ptr nonnull %f) #7
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %g) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %g, i8 0, i64 2004, i1 false)
  %5 = load i32, ptr %n, align 4, !tbaa !38
  %.fr = freeze i32 %5
  %cmp8.not127 = icmp sgt i32 %.fr, %0
  br i1 %cmp8.not127, label %for.cond75.preheader.thread, label %for.cond9.preheader.lr.ph

for.cond9.preheader.lr.ph:                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %cmp13.not.not124 = icmp sgt i32 %.fr, 0
  br i1 %cmp13.not.not124, label %for.cond9.preheader.us.preheader, label %for.body30.lr.ph.split

for.cond9.preheader.us.preheader:                 ; preds = %for.cond9.preheader.lr.ph
  %6 = zext nneg i32 %.fr to i64
  %7 = sub i32 %indvars.iv194, %.fr
  %wide.trip.count = zext i32 %7 to i64
  br label %for.cond9.preheader.us

for.cond9.preheader.us:                           ; preds = %for.cond9.preheader.us.preheader, %for.cond9.preheader.us
  %indvar = phi i64 [ 0, %for.cond9.preheader.us.preheader ], [ %indvar.next, %for.cond9.preheader.us ]
  %8 = mul nuw nsw i64 %indvar, 5
  %scevgep = getelementptr nuw i8, ptr %f, i64 %8
  %scevgep185 = getelementptr nuw i8, ptr %a, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 1 %scevgep185, i64 %6, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body30.us.preheader, label %for.cond9.preheader.us, !llvm.loop !39

for.cond75.preheader.thread:                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %flag) #7
  br label %if.else

for.body30.us.preheader:                          ; preds = %for.cond9.preheader.us
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %flag) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %flag, i8 0, i64 2004, i1 false)
  %9 = sub i32 %indvars.iv194, %.fr
  %wide.trip.count226 = zext i32 %9 to i64
  %wide.trip.count214 = zext nneg i32 %.fr to i64
  br label %for.body30.us

for.body30.us:                                    ; preds = %for.body30.us.preheader, %for.inc72.us
  %indvars.iv216 = phi i64 [ 0, %for.body30.us.preheader ], [ %indvars.iv.next217, %for.inc72.us ]
  %arrayidx.us = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv216
  %10 = load i32, ptr %arrayidx.us, align 4, !tbaa !38
  %cmp31.us = icmp eq i32 %10, 1
  br i1 %cmp31.us, label %for.inc72.us, label %for.cond38.preheader.lr.ph.us

for.inc72.us:                                     ; preds = %for.inc68.us.us, %for.body30.us
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %exitcond227.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count226
  br i1 %exitcond227.not, label %for.body78.preheader, label %for.body30.us, !llvm.loop !40

for.cond38.preheader.lr.ph.us:                    ; preds = %for.body30.us
  %add.ptr43.us = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv216
  %arrayidx63.us = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv216
  br label %for.cond38.preheader.us.us

for.cond38.preheader.us.us:                       ; preds = %for.inc68.us.us, %for.cond38.preheader.lr.ph.us
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %for.inc68.us.us ], [ %indvars.iv216, %for.cond38.preheader.lr.ph.us ]
  %add.ptr49.us.us = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv218
  br label %for.body41.us.us

for.body41.us.us:                                 ; preds = %for.inc57.us.us, %for.cond38.preheader.us.us
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %for.inc57.us.us ], [ 0, %for.cond38.preheader.us.us ]
  %add.ptr46.us.us = getelementptr inbounds nuw i8, ptr %add.ptr43.us, i64 %indvars.iv211
  %11 = load i8, ptr %add.ptr46.us.us, align 1, !tbaa !5
  %add.ptr52.us.us = getelementptr inbounds nuw i8, ptr %add.ptr49.us.us, i64 %indvars.iv211
  %12 = load i8, ptr %add.ptr52.us.us, align 1, !tbaa !5
  %cmp54.not.us.us = icmp eq i8 %11, %12
  br i1 %cmp54.not.us.us, label %for.inc57.us.us, label %for.end59.us.us

for.end59.us.us:                                  ; preds = %for.body41.us.us
  %13 = trunc nuw nsw i64 %indvars.iv211 to i32
  %cmp60.us.us = icmp eq i32 %.fr, %13
  br i1 %cmp60.us.us, label %if.then61.us.us, label %for.inc68.us.us

if.then61.us.us:                                  ; preds = %for.inc57.us.us, %for.end59.us.us
  %14 = load i32, ptr %arrayidx63.us, align 4, !tbaa !38
  %inc64.us.us = add nsw i32 %14, 1
  store i32 %inc64.us.us, ptr %arrayidx63.us, align 4, !tbaa !38
  %arrayidx66.us.us = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv218
  store i32 1, ptr %arrayidx66.us.us, align 4, !tbaa !38
  br label %for.inc68.us.us

for.inc68.us.us:                                  ; preds = %if.then61.us.us, %for.end59.us.us
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1
  %exitcond223.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count226
  br i1 %exitcond223.not, label %for.inc72.us, label %for.cond38.preheader.us.us, !llvm.loop !41

for.inc57.us.us:                                  ; preds = %for.body41.us.us
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %if.then61.us.us, label %for.body41.us.us, !llvm.loop !42

for.body30.lr.ph.split:                           ; preds = %for.cond9.preheader.lr.ph
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %flag) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2004) %flag, i8 0, i64 2004, i1 false)
  %cmp60 = icmp eq i32 %.fr, 0
  br i1 %cmp60, label %for.body30.us153.preheader, label %for.body78.preheader

for.body30.us153.preheader:                       ; preds = %for.body30.lr.ph.split
  %wide.trip.count209 = zext i32 %indvars.iv194 to i64
  br label %for.body30.us153

for.body30.us153:                                 ; preds = %for.body30.us153.preheader, %for.inc72.us163
  %indvars.iv199 = phi i64 [ 0, %for.body30.us153.preheader ], [ %indvars.iv.next200, %for.inc72.us163 ]
  %15 = sub nsw i64 %wide.trip.count209, %indvars.iv199
  %arrayidx.us157 = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv199
  %16 = load i32, ptr %arrayidx.us157, align 4, !tbaa !38
  %cmp31.us158 = icmp eq i32 %16, 1
  br i1 %cmp31.us158, label %for.inc72.us163, label %for.cond38.preheader.lr.ph.us169

for.end70.us159:                                  ; preds = %for.cond38.preheader.us137.us, %middle.block
  %inc64.us140.us.lcssa = phi i32 [ %22, %middle.block ], [ %inc64.us140.us, %for.cond38.preheader.us137.us ]
  store i32 %inc64.us140.us.lcssa, ptr %arrayidx63.us170, align 4, !tbaa !38
  br label %for.inc72.us163

for.inc72.us163:                                  ; preds = %for.body30.us153, %for.end70.us159
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count209
  br i1 %exitcond210.not, label %for.body78.preheader, label %for.body30.us153, !llvm.loop !40

for.cond38.preheader.lr.ph.us169:                 ; preds = %for.body30.us153
  %arrayidx63.us170 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv199
  %arrayidx63.promoted.us = load i32, ptr %arrayidx63.us170, align 4, !tbaa !38
  %min.iters.check = icmp ult i64 %15, 4
  br i1 %min.iters.check, label %for.cond38.preheader.us137.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond38.preheader.lr.ph.us169
  %n.vec = and i64 %15, -4
  %17 = add i64 %indvars.iv199, %n.vec
  %18 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx63.promoted.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %18, %vector.ph ], [ %19, %vector.body ]
  %offset.idx = add i64 %indvars.iv199, %index
  %19 = add <4 x i32> %vec.phi, splat (i32 1)
  %20 = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %offset.idx
  store <4 x i32> splat (i32 1), ptr %20, align 4, !tbaa !38
  %index.next = add nuw i64 %index, 4
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %22 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %for.end70.us159, label %for.cond38.preheader.us137.us.preheader

for.cond38.preheader.us137.us.preheader:          ; preds = %for.cond38.preheader.lr.ph.us169, %middle.block
  %indvars.iv201.ph = phi i64 [ %indvars.iv199, %for.cond38.preheader.lr.ph.us169 ], [ %17, %middle.block ]
  %inc64.us140146.us.ph = phi i32 [ %arrayidx63.promoted.us, %for.cond38.preheader.lr.ph.us169 ], [ %22, %middle.block ]
  br label %for.cond38.preheader.us137.us

for.cond38.preheader.us137.us:                    ; preds = %for.cond38.preheader.us137.us.preheader, %for.cond38.preheader.us137.us
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %for.cond38.preheader.us137.us ], [ %indvars.iv201.ph, %for.cond38.preheader.us137.us.preheader ]
  %inc64.us140146.us = phi i32 [ %inc64.us140.us, %for.cond38.preheader.us137.us ], [ %inc64.us140146.us.ph, %for.cond38.preheader.us137.us.preheader ]
  %inc64.us140.us = add nsw i32 %inc64.us140146.us, 1
  %arrayidx66.us142.us = getelementptr inbounds nuw [501 x i32], ptr %flag, i64 0, i64 %indvars.iv201
  store i32 1, ptr %arrayidx66.us142.us, align 4, !tbaa !38
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  %exitcond206.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count209
  br i1 %exitcond206.not, label %for.end70.us159, label %for.cond38.preheader.us137.us, !llvm.loop !46

for.body78.preheader:                             ; preds = %for.inc72.us163, %for.inc72.us, %for.body30.lr.ph.split
  %23 = sub i32 %indvars.iv194, %.fr
  %wide.trip.count232 = zext i32 %23 to i64
  %min.iters.check251 = icmp ult i32 %23, 4
  br i1 %min.iters.check251, label %for.body78.preheader263, label %vector.ph252

vector.ph252:                                     ; preds = %for.body78.preheader
  %n.vec254 = and i64 %wide.trip.count232, 4294967292
  br label %vector.body255

vector.body255:                                   ; preds = %vector.body255, %vector.ph252
  %index256 = phi i64 [ 0, %vector.ph252 ], [ %index.next258, %vector.body255 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph252 ], [ %25, %vector.body255 ]
  %24 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %index256
  %wide.load = load <4 x i32>, ptr %24, align 16, !tbaa !38
  %25 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi257)
  %index.next258 = add nuw i64 %index256, 4
  %26 = icmp eq i64 %index.next258, %n.vec254
  br i1 %26, label %middle.block259, label %vector.body255, !llvm.loop !47

middle.block259:                                  ; preds = %vector.body255
  %27 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %25)
  %cmp.n260 = icmp eq i64 %n.vec254, %wide.trip.count232
  br i1 %cmp.n260, label %for.end84, label %for.body78.preheader263

for.body78.preheader263:                          ; preds = %for.body78.preheader, %middle.block259
  %indvars.iv228.ph = phi i64 [ 0, %for.body78.preheader ], [ %n.vec254, %middle.block259 ]
  %l.0172.ph = phi i32 [ 0, %for.body78.preheader ], [ %27, %middle.block259 ]
  br label %for.body78

for.body78:                                       ; preds = %for.body78.preheader263, %for.body78
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %for.body78 ], [ %indvars.iv228.ph, %for.body78.preheader263 ]
  %l.0172 = phi i32 [ %.sroa.speculated, %for.body78 ], [ %l.0172.ph, %for.body78.preheader263 ]
  %arrayidx80 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv228
  %28 = load i32, ptr %arrayidx80, align 4, !tbaa !38
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %28, i32 %l.0172)
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1
  %exitcond233.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count232
  br i1 %exitcond233.not, label %for.end84, label %for.body78, !llvm.loop !48

for.end84:                                        ; preds = %for.body78, %middle.block259
  %.sroa.speculated.lcssa = phi i32 [ %27, %middle.block259 ], [ %.sroa.speculated, %for.body78 ]
  %cmp85 = icmp sgt i32 %.sroa.speculated.lcssa, 1
  br i1 %cmp85, label %if.then86, label %if.else

if.then86:                                        ; preds = %for.end84
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.sroa.speculated.lcssa)
  %vtable.i59 = load ptr, ptr %call87, align 8, !tbaa !11
  %vbase.offset.ptr.i60 = getelementptr i8, ptr %vtable.i59, i64 -24
  %vbase.offset.i61 = load i64, ptr %vbase.offset.ptr.i60, align 8
  %add.ptr.i62 = getelementptr inbounds i8, ptr %call87, i64 %vbase.offset.i61
  %_M_ctype.i.i63 = getelementptr inbounds nuw i8, ptr %add.ptr.i62, i64 240
  %29 = load ptr, ptr %_M_ctype.i.i63, align 8, !tbaa !13
  %tobool.not.i.i.i64 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i64, label %if.then.i.i.i77, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

if.then.i.i.i77:                                  ; preds = %if.then86
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %if.then86
  %_M_widen_ok.i.i.i66 = getelementptr inbounds nuw i8, ptr %29, i64 56
  %30 = load i8, ptr %_M_widen_ok.i.i.i66, align 8, !tbaa !32
  %tobool.not.i1.i.i67 = icmp eq i8 %30, 0
  br i1 %tobool.not.i1.i.i67, label %if.end.i.i.i73, label %if.then.i2.i.i68

if.then.i2.i.i68:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %arrayidx.i.i.i69 = getelementptr inbounds nuw i8, ptr %29, i64 67
  %31 = load i8, ptr %arrayidx.i.i.i69, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

if.end.i.i.i73:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %29)
  %vtable.i.i.i74 = load ptr, ptr %29, align 8, !tbaa !11
  %vfn.i.i.i75 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i74, i64 48
  %32 = load ptr, ptr %vfn.i.i.i75, align 8
  %call.i.i.i76 = call noundef signext i8 %32(ptr noundef nonnull align 8 dereferenceable(570) %29, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78: ; preds = %if.then.i2.i.i68, %if.end.i.i.i73
  %retval.0.i.i.i70 = phi i8 [ %31, %if.then.i2.i.i68 ], [ %call.i.i.i76, %if.end.i.i.i73 ]
  %call1.i71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call87, i8 noundef signext %retval.0.i.i.i70)
  %call.i.i72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i71)
  %33 = load i32, ptr %n, align 4, !tbaa !38
  %cmp91.not179 = icmp sgt i32 %33, %0
  br i1 %cmp91.not179, label %if.end117, label %for.body92

for.body92:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78, %for.inc112
  %34 = phi i32 [ %44, %for.inc112 ], [ %33, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78 ]
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %for.inc112 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78 ]
  %arrayidx94 = getelementptr inbounds nuw [501 x i32], ptr %g, i64 0, i64 %indvars.iv237
  %35 = load i32, ptr %arrayidx94, align 4, !tbaa !38
  %cmp95 = icmp eq i32 %35, %.sroa.speculated.lcssa
  br i1 %cmp95, label %for.cond97.preheader, label %for.inc112

for.cond97.preheader:                             ; preds = %for.body92
  %cmp99.not.not175 = icmp sgt i32 %34, 0
  br i1 %cmp99.not.not175, label %for.body100.lr.ph, label %for.end109

for.body100.lr.ph:                                ; preds = %for.cond97.preheader
  %add.ptr102 = getelementptr inbounds nuw [5 x i8], ptr %f, i64 %indvars.iv237
  br label %for.body100

for.body100:                                      ; preds = %for.body100.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv234 = phi i64 [ 0, %for.body100.lr.ph ], [ %indvars.iv.next235, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %add.ptr105 = getelementptr inbounds nuw i8, ptr %add.ptr102, i64 %indvars.iv234
  %36 = load i8, ptr %add.ptr105, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %36, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %37 = load i64, ptr %gep, align 8, !tbaa !49
  %cmp.not.i = icmp eq i64 %37, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body100
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body100
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %36)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1
  %38 = load i32, ptr %n, align 4, !tbaa !38
  %39 = sext i32 %38 to i64
  %cmp99.not.not = icmp slt i64 %indvars.iv.next235, %39
  br i1 %cmp99.not.not, label %for.body100, label %for.end109, !llvm.loop !50

for.end109:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond97.preheader
  %vtable.i79 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i80 = getelementptr i8, ptr %vtable.i79, i64 -24
  %vbase.offset.i81 = load i64, ptr %vbase.offset.ptr.i80, align 8
  %gep177 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i81
  %40 = load ptr, ptr %gep177, align 8, !tbaa !13
  %tobool.not.i.i.i84 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i84, label %if.then.i.i.i97, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85

if.then.i.i.i97:                                  ; preds = %for.end109
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85: ; preds = %for.end109
  %_M_widen_ok.i.i.i86 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %41 = load i8, ptr %_M_widen_ok.i.i.i86, align 8, !tbaa !32
  %tobool.not.i1.i.i87 = icmp eq i8 %41, 0
  br i1 %tobool.not.i1.i.i87, label %if.end.i.i.i93, label %if.then.i2.i.i88

if.then.i2.i.i88:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  %arrayidx.i.i.i89 = getelementptr inbounds nuw i8, ptr %40, i64 67
  %42 = load i8, ptr %arrayidx.i.i.i89, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit98

if.end.i.i.i93:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i85
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %40)
  %vtable.i.i.i94 = load ptr, ptr %40, align 8, !tbaa !11
  %vfn.i.i.i95 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i94, i64 48
  %43 = load ptr, ptr %vfn.i.i.i95, align 8
  %call.i.i.i96 = call noundef signext i8 %43(ptr noundef nonnull align 8 dereferenceable(570) %40, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit98

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit98: ; preds = %if.then.i2.i.i88, %if.end.i.i.i93
  %retval.0.i.i.i90 = phi i8 [ %42, %if.then.i2.i.i88 ], [ %call.i.i.i96, %if.end.i.i.i93 ]
  %call1.i91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i90)
  %call.i.i92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i91)
  %.pre = load i32, ptr %n, align 4, !tbaa !38
  br label %for.inc112

for.inc112:                                       ; preds = %for.body92, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit98
  %44 = phi i32 [ %34, %for.body92 ], [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit98 ]
  %indvars.iv.next238 = add nuw nsw i64 %indvars.iv237, 1
  %sub90 = sub nsw i32 %0, %44
  %45 = sext i32 %sub90 to i64
  %cmp91.not.not = icmp slt i64 %indvars.iv237, %45
  br i1 %cmp91.not.not, label %for.body92, label %if.end117, !llvm.loop !51

if.else:                                          ; preds = %for.cond75.preheader.thread, %for.end84
  %call1.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i99 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i100 = getelementptr i8, ptr %vtable.i99, i64 -24
  %vbase.offset.i101 = load i64, ptr %vbase.offset.ptr.i100, align 8
  %add.ptr.i102 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i101
  %_M_ctype.i.i103 = getelementptr inbounds nuw i8, ptr %add.ptr.i102, i64 240
  %46 = load ptr, ptr %_M_ctype.i.i103, align 8, !tbaa !13
  %tobool.not.i.i.i104 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i104, label %if.then.i.i.i117, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i105

if.then.i.i.i117:                                 ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i105: ; preds = %if.else
  %_M_widen_ok.i.i.i106 = getelementptr inbounds nuw i8, ptr %46, i64 56
  %47 = load i8, ptr %_M_widen_ok.i.i.i106, align 8, !tbaa !32
  %tobool.not.i1.i.i107 = icmp eq i8 %47, 0
  br i1 %tobool.not.i1.i.i107, label %if.end.i.i.i113, label %if.then.i2.i.i108

if.then.i2.i.i108:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i105
  %arrayidx.i.i.i109 = getelementptr inbounds nuw i8, ptr %46, i64 67
  %48 = load i8, ptr %arrayidx.i.i.i109, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit118

if.end.i.i.i113:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i105
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %46)
  %vtable.i.i.i114 = load ptr, ptr %46, align 8, !tbaa !11
  %vfn.i.i.i115 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i114, i64 48
  %49 = load ptr, ptr %vfn.i.i.i115, align 8
  %call.i.i.i116 = call noundef signext i8 %49(ptr noundef nonnull align 8 dereferenceable(570) %46, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit118

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit118: ; preds = %if.then.i2.i.i108, %if.end.i.i.i113
  %retval.0.i.i.i110 = phi i8 [ %48, %if.then.i2.i.i108 ], [ %call.i.i.i116, %if.end.i.i.i113 ]
  %call1.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i110)
  %call.i.i112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i111)
  br label %if.end117

if.end117:                                        ; preds = %for.inc112, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit78, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit118
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %flag) #7
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %g) #7
  call void @llvm.lifetime.end.p0(i64 2505, ptr nonnull %f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !29, i64 240}
!14 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !15, i64 0, !26, i64 216, !6, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !6, i64 64, !22, i64 192, !23, i64 200, !24, i64 208}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"int", !6, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!26 = !{!"p1 _ZTSSo", !20, i64 0}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!32 = !{!33, !6, i64 56}
!33 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !27, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!34 = !{!"_ZTSNSt6locale5facetE", !22, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!36 = !{!"p1 int", !20, i64 0}
!37 = !{!"p1 short", !20, i64 0}
!38 = !{!22, !22, i64 0}
!39 = distinct !{!39, !9, !10}
!40 = distinct !{!40, !9, !10}
!41 = distinct !{!41, !9, !10}
!42 = distinct !{!42, !9, !10}
!43 = distinct !{!43, !9, !10, !44, !45}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = distinct !{!46, !9, !10, !44}
!47 = distinct !{!47, !9, !10, !44, !45}
!48 = distinct !{!48, !9, !10, !44}
!49 = !{!15, !16, i64 16}
!50 = distinct !{!50, !9, !10}
!51 = distinct !{!51, !9, !10}
