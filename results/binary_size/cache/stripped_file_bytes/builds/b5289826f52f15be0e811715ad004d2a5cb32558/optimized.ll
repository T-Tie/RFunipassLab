; ModuleID = '<stdin>'
source_filename = "/tmp/tmp33njbwyd.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %l)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %0 = load i32, ptr %l, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %m, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp30, i1 %2, i1 false
  br i1 %or.cond, label %for.cond2.preheader, label %for.cond.cleanup

for.cond2.preheader:                              ; preds = %entry, %for.cond.cleanup4
  %3 = phi i32 [ %8, %for.cond.cleanup4 ], [ %0, %entry ]
  %4 = phi i32 [ %9, %for.cond.cleanup4 ], [ %1, %entry ]
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.cond.cleanup4 ], [ 0, %entry ]
  %cmp328 = icmp sgt i32 %4, 0
  br i1 %cmp328, label %for.body5, label %for.cond.cleanup4

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4, %entry
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %m)
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call12, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %5 = load i32, ptr %m, align 4, !tbaa !5
  %cmp1634 = icmp sgt i32 %5, 0
  %6 = load i32, ptr %n, align 4
  %7 = icmp sgt i32 %6, 0
  %or.cond72 = select i1 %cmp1634, i1 %7, i1 false
  br i1 %or.cond72, label %for.cond20.preheader, label %for.cond36.preheader

for.cond.cleanup4.loopexit:                       ; preds = %for.body5
  %.pre = load i32, ptr %l, align 4, !tbaa !5
  br label %for.cond.cleanup4

for.cond.cleanup4:                                ; preds = %for.cond.cleanup4.loopexit, %for.cond2.preheader
  %8 = phi i32 [ %.pre, %for.cond.cleanup4.loopexit ], [ %3, %for.cond2.preheader ]
  %9 = phi i32 [ %11, %for.cond.cleanup4.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %10 = sext i32 %8 to i64
  %cmp = icmp slt i64 %indvars.iv.next49, %10
  br i1 %cmp, label %for.cond2.preheader, label %for.cond.cleanup, !llvm.loop !9

for.body5:                                        ; preds = %for.cond2.preheader, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond2.preheader ]
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv
  %call8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4.loopexit, !llvm.loop !13

for.cond20.preheader:                             ; preds = %for.cond.cleanup, %for.cond.cleanup22
  %13 = phi i32 [ %18, %for.cond.cleanup22 ], [ %5, %for.cond.cleanup ]
  %14 = phi i32 [ %19, %for.cond.cleanup22 ], [ %6, %for.cond.cleanup ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.cond.cleanup22 ], [ 0, %for.cond.cleanup ]
  %cmp2132 = icmp sgt i32 %14, 0
  br i1 %cmp2132, label %for.body23, label %for.cond.cleanup22

for.cond36.preheader:                             ; preds = %for.cond.cleanup22, %for.cond.cleanup
  %15 = load i32, ptr %l, align 4, !tbaa !5
  %cmp3742 = icmp sgt i32 %15, 0
  %16 = load i32, ptr %n, align 4
  %17 = icmp sgt i32 %16, 0
  %or.cond74 = select i1 %cmp3742, i1 %17, i1 false
  br i1 %or.cond74, label %for.cond41.preheader, label %for.cond.cleanup38

for.cond.cleanup22.loopexit:                      ; preds = %for.body23
  %.pre66 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond.cleanup22.loopexit, %for.cond20.preheader
  %18 = phi i32 [ %.pre66, %for.cond.cleanup22.loopexit ], [ %13, %for.cond20.preheader ]
  %19 = phi i32 [ %21, %for.cond.cleanup22.loopexit ], [ %14, %for.cond20.preheader ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %20 = sext i32 %18 to i64
  %cmp16 = icmp slt i64 %indvars.iv.next55, %20
  br i1 %cmp16, label %for.cond20.preheader, label %for.cond36.preheader, !llvm.loop !14

for.body23:                                       ; preds = %for.cond20.preheader, %for.body23
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body23 ], [ 0, %for.cond20.preheader ]
  %arrayidx27 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv54, i64 %indvars.iv51
  %call28 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx27)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next52, %22
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22.loopexit, !llvm.loop !15

for.cond41.preheader:                             ; preds = %for.cond36.preheader, %for.cond.cleanup43
  %23 = phi i32 [ %25, %for.cond.cleanup43 ], [ %15, %for.cond36.preheader ]
  %24 = phi i32 [ %26, %for.cond.cleanup43 ], [ %16, %for.cond36.preheader ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.cond.cleanup43 ], [ 0, %for.cond36.preheader ]
  %cmp4240 = icmp sgt i32 %24, 0
  br i1 %cmp4240, label %for.body44, label %for.cond.cleanup43

for.cond.cleanup38:                               ; preds = %for.cond.cleanup43, %for.cond36.preheader
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l) #5
  ret i32 0

for.cond.cleanup43.loopexit:                      ; preds = %for.inc76
  %.pre67 = load i32, ptr %l, align 4, !tbaa !5
  br label %for.cond.cleanup43

for.cond.cleanup43:                               ; preds = %for.cond.cleanup43.loopexit, %for.cond41.preheader
  %25 = phi i32 [ %.pre67, %for.cond.cleanup43.loopexit ], [ %23, %for.cond41.preheader ]
  %26 = phi i32 [ %59, %for.cond.cleanup43.loopexit ], [ %24, %for.cond41.preheader ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %27 = sext i32 %25 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next64, %27
  br i1 %cmp37, label %for.cond41.preheader, label %for.cond.cleanup38, !llvm.loop !16

for.body44:                                       ; preds = %for.cond41.preheader, %for.inc76
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc76 ], [ 0, %for.cond41.preheader ]
  %28 = load i32, ptr %m, align 4, !tbaa !5
  %cmp5036 = icmp sgt i32 %28, 0
  br i1 %cmp5036, label %for.body52.lr.ph, label %for.cond.cleanup51

for.body52.lr.ph:                                 ; preds = %for.body44
  %wide.trip.count = zext nneg i32 %28 to i64
  %min.iters.check = icmp ult i32 %28, 4
  br i1 %min.iters.check, label %for.body52.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body52.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %46, %vector.body ]
  %29 = or disjoint i64 %index, 1
  %30 = or disjoint i64 %index, 2
  %31 = or disjoint i64 %index, 3
  %32 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %index
  %wide.load = load <4 x i32>, ptr %32, align 8, !tbaa !5
  %33 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv60
  %34 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %29, i64 %indvars.iv60
  %35 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %30, i64 %indvars.iv60
  %36 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %31, i64 %indvars.iv60
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = insertelement <4 x i32> poison, i32 %37, i64 0
  %42 = insertelement <4 x i32> %41, i32 %38, i64 1
  %43 = insertelement <4 x i32> %42, i32 %39, i64 2
  %44 = insertelement <4 x i32> %43, i32 %40, i64 3
  %45 = mul nsw <4 x i32> %44, %wide.load
  %46 = add <4 x i32> %vec.phi, %45
  %index.next = add nuw i64 %index, 4
  %47 = icmp eq i64 %index.next, %n.vec
  br i1 %47, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %48 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %46)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup51, label %for.body52.preheader

for.body52.preheader:                             ; preds = %for.body52.lr.ph, %middle.block
  %indvars.iv57.ph = phi i64 [ 0, %for.body52.lr.ph ], [ %n.vec, %middle.block ]
  %add38.ph = phi i32 [ 0, %for.body52.lr.ph ], [ %48, %middle.block ]
  br label %for.body52

for.cond.cleanup51:                               ; preds = %for.body52, %middle.block, %for.body44
  %49 = phi i32 [ 0, %for.body44 ], [ %48, %middle.block ], [ %add, %for.body52 ]
  %call72 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %49)
  %50 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %50, -1
  %51 = zext i32 %sub to i64
  %cmp73 = icmp eq i64 %indvars.iv60, %51
  br i1 %cmp73, label %if.then, label %if.else

for.body52:                                       ; preds = %for.body52.preheader, %for.body52
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body52 ], [ %indvars.iv57.ph, %for.body52.preheader ]
  %add38 = phi i32 [ %add, %for.body52 ], [ %add38.ph, %for.body52.preheader ]
  %arrayidx56 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv57
  %52 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv57, i64 %indvars.iv60
  %53 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %mul = mul nsw i32 %53, %52
  %add = add nsw i32 %add38, %mul
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup51, label %for.body52, !llvm.loop !20

if.then:                                          ; preds = %for.cond.cleanup51
  %vtable.i23 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %vbase.offset.ptr.i24 = getelementptr i8, ptr %vtable.i23, i64 -24
  %vbase.offset.i25 = load i64, ptr %vbase.offset.ptr.i24, align 8
  %gep39 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i25
  %54 = load ptr, ptr %gep39, align 8, !tbaa !23
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 56
  %55 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !41
  %tobool.not.i1.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 67
  %56 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !47
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %54)
  %vtable.i.i.i = load ptr, ptr %54, align 8, !tbaa !21
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %57 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %57(ptr noundef nonnull align 8 dereferenceable(570) %54, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %56, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  br label %for.inc76

if.else:                                          ; preds = %for.cond.cleanup51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !47
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %58 = load i64, ptr %gep, align 8, !tbaa !48
  %cmp.not.i = icmp eq i64 %58, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.else
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc76

for.inc76:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %59 = load i32, ptr %n, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %cmp42 = icmp slt i64 %indvars.iv.next61, %60
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43.loopexit, !llvm.loop !49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !11, !18}
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !38, i64 240}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !35, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = !{!"p1 _ZTSSo", !30, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!41 = !{!42, !7, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !44, i64 16, !36, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!44 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!45 = !{!"p1 int", !30, i64 0}
!46 = !{!"p1 short", !30, i64 0}
!47 = !{!7, !7, i64 0}
!48 = !{!25, !26, i64 16}
!49 = distinct !{!49, !10, !11}
