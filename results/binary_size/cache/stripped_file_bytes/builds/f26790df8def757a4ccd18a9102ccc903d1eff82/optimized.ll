; ModuleID = '<stdin>'
source_filename = "/tmp/tmputab8_y_.cpp"
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
  %word = alloca [600 x i8], align 16
  %gram = alloca [600 x [10 x i8]], align 16
  %temp = alloca [600 x [10 x i8]], align 16
  %cnt = alloca [600 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 600, ptr nonnull %word) #9
  call void @llvm.lifetime.start.p0(i64 6000, ptr nonnull %gram) #9
  call void @llvm.lifetime.start.p0(i64 6000, ptr nonnull %temp) #9
  call void @llvm.lifetime.start.p0(i64 2400, ptr nonnull %cnt) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %word, i64 noundef 600, i8 noundef signext %retval.0.i.i.i)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %word) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2400) %cnt, i8 0, i64 2400, i1 false), !tbaa !35
  %conv = trunc i64 %call4 to i32
  %4 = load i32, ptr %n, align 4, !tbaa !35
  %cmp6.not153 = icmp sgt i32 %4, %conv
  br i1 %cmp6.not153, label %if.else, label %for.cond8.preheader.preheader

for.cond8.preheader.preheader:                    ; preds = %_ZNSi7getlineEPcl.exit
  %5 = sext i32 %4 to i64
  %6 = add i32 %conv, 1
  %7 = sub i32 %6, %4
  %wide.trip.count = zext i32 %7 to i64
  %cmp11.not.not150 = icmp sgt i32 %4, 0
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader.preheader, %for.end22
  %indvar = phi i64 [ 0, %for.cond8.preheader.preheader ], [ %18, %for.end22 ]
  %8 = add i64 %indvar, %5
  %9 = shl i64 %indvar, 32
  %sext227 = add i64 %9, 4294967296
  %10 = ashr exact i64 %sext227, 32
  %smax213 = call i64 @llvm.smax.i64(i64 %8, i64 %10)
  %11 = add i64 %smax213, 1
  %12 = sub i64 %11, %10
  %13 = add i64 %indvar, %5
  %14 = trunc i64 %indvar to i32
  %15 = add i32 %14, 1
  %16 = sext i32 %15 to i64
  %smax212 = call i64 @llvm.smax.i64(i64 %13, i64 %16)
  %17 = sub i64 %smax212, %16
  %18 = add nuw nsw i64 %indvar, 1
  %19 = add nsw i64 %indvar, %5
  br i1 %cmp11.not.not150, label %for.body12.lr.ph, label %for.end22

for.body12.lr.ph:                                 ; preds = %for.cond8.preheader
  %20 = trunc i64 %indvar to i32
  %21 = add i32 %4, %20
  %22 = trunc i64 %18 to i32
  %smax = call i32 @llvm.smax.i32(i32 %21, i32 %22)
  %23 = trunc i64 %indvar to i32
  %24 = xor i32 %23, -1
  %25 = add i32 %smax, %24
  %26 = zext i32 %25 to i64
  %27 = add nuw nsw i64 %26, 1
  %scevgep173 = getelementptr i8, ptr %word, i64 %indvar
  %28 = mul nuw nsw i64 %indvar, 10
  %scevgep = getelementptr i8, ptr %gram, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %scevgep173, i64 %27, i1 false), !tbaa !34
  %min.iters.check = icmp ult i64 %12, 8
  br i1 %min.iters.check, label %for.body12.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %for.body12.lr.ph
  %29 = trunc i64 %17 to i32
  %30 = add i32 %15, %29
  %31 = icmp slt i32 %30, %15
  %32 = icmp ugt i64 %17, 4294967295
  %33 = or i1 %31, %32
  br i1 %33, label %for.body12.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %12, -2
  %34 = add i64 %indvar, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %35, %vector.body ]
  %35 = add <2 x i64> %vec.phi, splat (i64 1)
  %index.next = add nuw i64 %index, 2
  %36 = icmp eq i64 %index.next, %n.vec
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !36

middle.block:                                     ; preds = %vector.body
  %37 = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %35)
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %for.end22.loopexit, label %for.body12.preheader

for.body12.preheader:                             ; preds = %vector.scevcheck, %for.body12.lr.ph, %middle.block
  %indvars.iv174.ph = phi i64 [ %indvar, %vector.scevcheck ], [ %indvar, %for.body12.lr.ph ], [ %34, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %for.body12.lr.ph ], [ %37, %middle.block ]
  br label %for.body12

for.body34.preheader:                             ; preds = %for.end22
  %38 = add i32 %conv, 1
  %39 = sub i32 %38, %4
  %wide.trip.count184 = zext i32 %39 to i64
  br label %for.body34

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv174 = phi i64 [ %indvars.iv.next175, %for.body12 ], [ %indvars.iv174.ph, %for.body12.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ %indvars.iv.ph, %for.body12.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1
  %sext = shl i64 %indvars.iv.next175, 32
  %40 = ashr exact i64 %sext, 32
  %cmp11.not.not = icmp slt i64 %40, %19
  br i1 %cmp11.not.not, label %for.body12, label %for.end22.loopexit, !llvm.loop !41

for.end22.loopexit:                               ; preds = %for.body12, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %37, %middle.block ], [ %indvars.iv.next, %for.body12 ]
  %41 = and i64 %indvars.iv.next.lcssa, 4294967295
  br label %for.end22

for.end22:                                        ; preds = %for.end22.loopexit, %for.cond8.preheader
  %count.1.lcssa = phi i64 [ 0, %for.cond8.preheader ], [ %41, %for.end22.loopexit ]
  %arrayidx26 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvar, i64 %count.1.lcssa
  store i8 0, ptr %arrayidx26, align 1, !tbaa !34
  %exitcond.not = icmp eq i64 %18, %wide.trip.count
  br i1 %exitcond.not, label %for.body34.preheader, label %for.cond8.preheader, !llvm.loop !42

for.cond50.preheader.preheader:                   ; preds = %for.body34
  %42 = add i32 %conv, 1
  %43 = sub i32 %42, %4
  %wide.trip.count194 = zext i32 %43 to i64
  br label %for.cond50.preheader

for.body34:                                       ; preds = %for.body34.preheader, %for.body34
  %indvars.iv181 = phi i64 [ 0, %for.body34.preheader ], [ %indvars.iv.next182, %for.body34 ]
  %arrayidx36 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv181
  %arrayidx39 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv181
  %call41 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %arrayidx36, ptr noundef nonnull dereferenceable(1) %arrayidx39) #9
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %for.cond50.preheader.preheader, label %for.body34, !llvm.loop !43

for.cond50.preheader:                             ; preds = %for.cond50.preheader.preheader, %for.cond50.for.inc69_crit_edge
  %indvars.iv191 = phi i64 [ 0, %for.cond50.preheader.preheader ], [ %indvars.iv.next192, %for.cond50.for.inc69_crit_edge ]
  %arrayidx56 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv191
  %arrayidx64 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv191
  br label %for.body54

for.body76.preheader:                             ; preds = %for.cond50.for.inc69_crit_edge
  %44 = add i32 %conv, 1
  %45 = sub i32 %44, %4
  %wide.trip.count199 = zext i32 %45 to i64
  %min.iters.check215 = icmp ult i32 %7, 4
  br i1 %min.iters.check215, label %for.body76.preheader228, label %vector.ph216

vector.ph216:                                     ; preds = %for.body76.preheader
  %n.vec218 = and i64 %wide.trip.count, 4294967292
  br label %vector.body219

vector.body219:                                   ; preds = %vector.body219, %vector.ph216
  %index220 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body219 ]
  %vec.phi221 = phi <4 x i32> [ splat (i32 1), %vector.ph216 ], [ %47, %vector.body219 ]
  %46 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %index220
  %wide.load = load <4 x i32>, ptr %46, align 16, !tbaa !35
  %47 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi221)
  %index.next222 = add nuw i64 %index220, 4
  %48 = icmp eq i64 %index.next222, %n.vec218
  br i1 %48, label %middle.block223, label %vector.body219, !llvm.loop !44

middle.block223:                                  ; preds = %vector.body219
  %49 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %47)
  %cmp.n224 = icmp eq i64 %n.vec218, %wide.trip.count
  br i1 %cmp.n224, label %for.end86, label %for.body76.preheader228

for.body76.preheader228:                          ; preds = %for.body76.preheader, %middle.block223
  %indvars.iv196.ph = phi i64 [ 0, %for.body76.preheader ], [ %n.vec218, %middle.block223 ]
  %max.0164.ph = phi i32 [ 1, %for.body76.preheader ], [ %49, %middle.block223 ]
  br label %for.body76

for.body54:                                       ; preds = %for.cond50.preheader, %for.inc66
  %indvars.iv186 = phi i64 [ 0, %for.cond50.preheader ], [ %indvars.iv.next187, %for.inc66 ]
  %arrayidx59 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %temp, i64 0, i64 %indvars.iv186
  %call61 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx56, ptr noundef nonnull dereferenceable(1) %arrayidx59) #11
  %cmp62 = icmp eq i32 %call61, 0
  br i1 %cmp62, label %if.then, label %for.inc66

if.then:                                          ; preds = %for.body54
  %50 = load i32, ptr %arrayidx64, align 4, !tbaa !35
  %inc65 = add nsw i32 %50, 1
  store i32 %inc65, ptr %arrayidx64, align 4, !tbaa !35
  br label %for.inc66

for.inc66:                                        ; preds = %for.body54, %if.then
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count194
  br i1 %exitcond190.not, label %for.cond50.for.inc69_crit_edge, label %for.body54, !llvm.loop !45

for.cond50.for.inc69_crit_edge:                   ; preds = %for.inc66
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %for.body76.preheader, label %for.cond50.preheader, !llvm.loop !46

for.body76:                                       ; preds = %for.body76.preheader228, %for.body76
  %indvars.iv196 = phi i64 [ %indvars.iv.next197, %for.body76 ], [ %indvars.iv196.ph, %for.body76.preheader228 ]
  %max.0164 = phi i32 [ %spec.select, %for.body76 ], [ %max.0164.ph, %for.body76.preheader228 ]
  %arrayidx78 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv196
  %51 = load i32, ptr %arrayidx78, align 4, !tbaa !35
  %spec.select = call i32 @llvm.smax.i32(i32 %51, i32 %max.0164)
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %for.end86, label %for.body76, !llvm.loop !47

for.end86:                                        ; preds = %for.body76, %middle.block223
  %spec.select.lcssa = phi i32 [ %49, %middle.block223 ], [ %spec.select, %for.body76 ]
  %cmp87 = icmp sgt i32 %spec.select.lcssa, 1
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %call89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %spec.select.lcssa)
  %vtable.i68 = load ptr, ptr %call89, align 8, !tbaa !5
  %vbase.offset.ptr.i69 = getelementptr i8, ptr %vtable.i68, i64 -24
  %vbase.offset.i70 = load i64, ptr %vbase.offset.ptr.i69, align 8
  %add.ptr.i71 = getelementptr inbounds i8, ptr %call89, i64 %vbase.offset.i70
  %_M_ctype.i.i72 = getelementptr inbounds nuw i8, ptr %add.ptr.i71, i64 240
  %52 = load ptr, ptr %_M_ctype.i.i72, align 8, !tbaa !8
  %tobool.not.i.i.i73 = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i73, label %if.then.i.i.i86, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74

if.then.i.i.i86:                                  ; preds = %if.then88
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74: ; preds = %if.then88
  %_M_widen_ok.i.i.i75 = getelementptr inbounds nuw i8, ptr %52, i64 56
  %53 = load i8, ptr %_M_widen_ok.i.i.i75, align 8, !tbaa !28
  %tobool.not.i1.i.i76 = icmp eq i8 %53, 0
  br i1 %tobool.not.i1.i.i76, label %if.end.i.i.i82, label %if.then.i2.i.i77

if.then.i2.i.i77:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  %arrayidx.i.i.i78 = getelementptr inbounds nuw i8, ptr %52, i64 67
  %54 = load i8, ptr %arrayidx.i.i.i78, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i82:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i74
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %52)
  %vtable.i.i.i83 = load ptr, ptr %52, align 8, !tbaa !5
  %vfn.i.i.i84 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i83, i64 48
  %55 = load ptr, ptr %vfn.i.i.i84, align 8
  %call.i.i.i85 = call noundef signext i8 %55(ptr noundef nonnull align 8 dereferenceable(570) %52, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i77, %if.end.i.i.i82
  %retval.0.i.i.i79 = phi i8 [ %54, %if.then.i2.i.i77 ], [ %call.i.i.i85, %if.end.i.i.i82 ]
  %call1.i80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call89, i8 noundef signext %retval.0.i.i.i79)
  %call.i.i81 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i80)
  %56 = load i32, ptr %n, align 4, !tbaa !35
  %cmp94.not169 = icmp sgt i32 %56, %conv
  br i1 %cmp94.not169, label %if.end144, label %for.body95

for.body95:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.inc139
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %for.inc139 ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %arrayidx97 = getelementptr inbounds nuw [600 x i32], ptr %cnt, i64 0, i64 %indvars.iv206
  %57 = load i32, ptr %arrayidx97, align 4, !tbaa !35
  %cmp98 = icmp eq i32 %57, %spec.select.lcssa
  %cmp99 = icmp eq i64 %indvars.iv206, 0
  %or.cond = and i1 %cmp99, %cmp98
  br i1 %or.cond, label %if.then100, label %if.end106

if.then100:                                       ; preds = %for.body95
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %gram) #9
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %gram, i64 noundef %call.i.i)
  %vtable.i87 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i88 = getelementptr i8, ptr %vtable.i87, i64 -24
  %vbase.offset.i89 = load i64, ptr %vbase.offset.ptr.i88, align 8
  %gep167 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i89
  %58 = load ptr, ptr %gep167, align 8, !tbaa !8
  %tobool.not.i.i.i92 = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i92, label %if.then.i.i.i105, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93

if.then.i.i.i105:                                 ; preds = %if.then100
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93: ; preds = %if.then100
  %_M_widen_ok.i.i.i94 = getelementptr inbounds nuw i8, ptr %58, i64 56
  %59 = load i8, ptr %_M_widen_ok.i.i.i94, align 8, !tbaa !28
  %tobool.not.i1.i.i95 = icmp eq i8 %59, 0
  br i1 %tobool.not.i1.i.i95, label %if.end.i.i.i101, label %if.then.i2.i.i96

if.then.i2.i.i96:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93
  %arrayidx.i.i.i97 = getelementptr inbounds nuw i8, ptr %58, i64 67
  %60 = load i8, ptr %arrayidx.i.i.i97, align 1, !tbaa !34
  br label %if.end106.thread

if.end.i.i.i101:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i93
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %58)
  %vtable.i.i.i102 = load ptr, ptr %58, align 8, !tbaa !5
  %vfn.i.i.i103 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i102, i64 48
  %61 = load ptr, ptr %vfn.i.i.i103, align 8
  %call.i.i.i104 = call noundef signext i8 %61(ptr noundef nonnull align 8 dereferenceable(570) %58, i8 noundef signext 10)
  br label %if.end106.thread

if.end106.thread:                                 ; preds = %if.end.i.i.i101, %if.then.i2.i.i96
  %retval.0.i.i.i98 = phi i8 [ %60, %if.then.i2.i.i96 ], [ %call.i.i.i104, %if.end.i.i.i101 ]
  %call1.i99 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i98)
  %call.i.i100 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i99)
  br label %for.inc139

if.end106:                                        ; preds = %for.body95
  %cmp111 = icmp ne i64 %indvars.iv206, 0
  %or.cond1 = and i1 %cmp111, %cmp98
  br i1 %or.cond1, label %for.cond113.preheader, label %for.inc139

for.cond113.preheader:                            ; preds = %if.end106
  %arrayidx117 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv206
  %62 = add nuw i64 %indvars.iv206, 4294967295
  %63 = and i64 %62, 4294967295
  br label %for.body115

for.body115:                                      ; preds = %for.cond113.preheader, %for.inc135
  %indvars.iv201 = phi i64 [ 0, %for.cond113.preheader ], [ %indvars.iv.next202, %for.inc135 ]
  %arrayidx120 = getelementptr inbounds nuw [600 x [10 x i8]], ptr %gram, i64 0, i64 %indvars.iv201
  %call122 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx117, ptr noundef nonnull dereferenceable(1) %arrayidx120) #11
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %for.inc139, label %if.end125

if.end125:                                        ; preds = %for.body115
  %cmp127 = icmp eq i64 %indvars.iv201, %63
  br i1 %cmp127, label %if.then128, label %for.inc135

if.then128:                                       ; preds = %if.end125
  %call.i.i58 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx117) #9
  %call1.i59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx117, i64 noundef %call.i.i58)
  %vtable.i107 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i108 = getelementptr i8, ptr %vtable.i107, i64 -24
  %vbase.offset.i109 = load i64, ptr %vbase.offset.ptr.i108, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i109
  %64 = load ptr, ptr %gep, align 8, !tbaa !8
  %tobool.not.i.i.i112 = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i112, label %if.then.i.i.i125, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113

if.then.i.i.i125:                                 ; preds = %if.then128
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113: ; preds = %if.then128
  %_M_widen_ok.i.i.i114 = getelementptr inbounds nuw i8, ptr %64, i64 56
  %65 = load i8, ptr %_M_widen_ok.i.i.i114, align 8, !tbaa !28
  %tobool.not.i1.i.i115 = icmp eq i8 %65, 0
  br i1 %tobool.not.i1.i.i115, label %if.end.i.i.i121, label %if.then.i2.i.i116

if.then.i2.i.i116:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113
  %arrayidx.i.i.i117 = getelementptr inbounds nuw i8, ptr %64, i64 67
  %66 = load i8, ptr %arrayidx.i.i.i117, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit126

if.end.i.i.i121:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i113
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %64)
  %vtable.i.i.i122 = load ptr, ptr %64, align 8, !tbaa !5
  %vfn.i.i.i123 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i122, i64 48
  %67 = load ptr, ptr %vfn.i.i.i123, align 8
  %call.i.i.i124 = call noundef signext i8 %67(ptr noundef nonnull align 8 dereferenceable(570) %64, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit126

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit126: ; preds = %if.then.i2.i.i116, %if.end.i.i.i121
  %retval.0.i.i.i118 = phi i8 [ %66, %if.then.i2.i.i116 ], [ %call.i.i.i124, %if.end.i.i.i121 ]
  %call1.i119 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i118)
  %call.i.i120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i119)
  br label %for.inc135

for.inc135:                                       ; preds = %if.end125, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit126
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %indvars.iv206
  br i1 %exitcond205.not, label %for.inc139, label %for.body115, !llvm.loop !48

for.inc139:                                       ; preds = %for.body115, %for.inc135, %if.end106.thread, %if.end106
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1
  %68 = load i32, ptr %n, align 4, !tbaa !35
  %sub92 = sub nsw i32 %conv, %68
  %69 = sext i32 %sub92 to i64
  %cmp94.not.not = icmp slt i64 %indvars.iv206, %69
  br i1 %cmp94.not.not, label %for.body95, label %if.end144, !llvm.loop !49

if.else:                                          ; preds = %_ZNSi7getlineEPcl.exit, %for.end86
  %call1.i66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i127 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i128 = getelementptr i8, ptr %vtable.i127, i64 -24
  %vbase.offset.i129 = load i64, ptr %vbase.offset.ptr.i128, align 8
  %add.ptr.i130 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i129
  %_M_ctype.i.i131 = getelementptr inbounds nuw i8, ptr %add.ptr.i130, i64 240
  %70 = load ptr, ptr %_M_ctype.i.i131, align 8, !tbaa !8
  %tobool.not.i.i.i132 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i132, label %if.then.i.i.i145, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133

if.then.i.i.i145:                                 ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133: ; preds = %if.else
  %_M_widen_ok.i.i.i134 = getelementptr inbounds nuw i8, ptr %70, i64 56
  %71 = load i8, ptr %_M_widen_ok.i.i.i134, align 8, !tbaa !28
  %tobool.not.i1.i.i135 = icmp eq i8 %71, 0
  br i1 %tobool.not.i1.i.i135, label %if.end.i.i.i141, label %if.then.i2.i.i136

if.then.i2.i.i136:                                ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133
  %arrayidx.i.i.i137 = getelementptr inbounds nuw i8, ptr %70, i64 67
  %72 = load i8, ptr %arrayidx.i.i.i137, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit146

if.end.i.i.i141:                                  ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i133
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %70)
  %vtable.i.i.i142 = load ptr, ptr %70, align 8, !tbaa !5
  %vfn.i.i.i143 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i142, i64 48
  %73 = load ptr, ptr %vfn.i.i.i143, align 8
  %call.i.i.i144 = call noundef signext i8 %73(ptr noundef nonnull align 8 dereferenceable(570) %70, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit146

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit146: ; preds = %if.then.i2.i.i136, %if.end.i.i.i141
  %retval.0.i.i.i138 = phi i8 [ %72, %if.then.i2.i.i136 ], [ %call.i.i.i144, %if.end.i.i.i141 ]
  %call1.i139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i138)
  %call.i.i140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i139)
  br label %if.end144

if.end144:                                        ; preds = %for.inc139, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %cnt) #9
  call void @llvm.lifetime.end.p0(i64 6000, ptr nonnull %temp) #9
  call void @llvm.lifetime.end.p0(i64 6000, ptr nonnull %gram) #9
  call void @llvm.lifetime.end.p0(i64 600, ptr nonnull %word) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!18, !18, i64 0}
!36 = distinct !{!36, !37, !38, !39, !40}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !37, !38, !39}
!42 = distinct !{!42, !37, !38}
!43 = distinct !{!43, !37, !38}
!44 = distinct !{!44, !37, !38, !39, !40}
!45 = distinct !{!45, !37, !38}
!46 = distinct !{!46, !37, !38}
!47 = distinct !{!47, !37, !38, !39}
!48 = distinct !{!48, !37, !38}
!49 = distinct !{!49, !37, !38}
