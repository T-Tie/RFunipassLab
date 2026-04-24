; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv504dky4.cpp"
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
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@switch.table.main = private unnamed_addr constant [11 x i16] [i16 0, i16 -31, i16 -60, i16 -91, i16 -121, i16 -152, i16 -182, i16 -213, i16 -244, i16 -274, i16 -305], align 2
@switch.table.main.1 = private unnamed_addr constant [11 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305], align 2
@switch.table.main.2 = private unnamed_addr constant [11 x i16] [i16 0, i16 -31, i16 -59, i16 -90, i16 -120, i16 -151, i16 -181, i16 -212, i16 -243, i16 -273, i16 -304], align 2
@switch.table.main.3 = private unnamed_addr constant [11 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304], align 2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not84 = icmp slt i32 %0, 1
  br i1 %cmp.not84, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %i.085 = phi i32 [ %inc, %for.inc ], [ 1, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %1, 400
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = and i32 %1, 3
  %cmp6 = icmp ne i32 %2, 0
  %rem7 = srem i32 %1, 100
  %cmp8.not = icmp eq i32 %rem7, 0
  %or.cond = or i1 %cmp6, %cmp8.not
  br i1 %or.cond, label %if.else42, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %3 = load i32, ptr %b, align 4, !tbaa !5
  %4 = load i32, ptr %c, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %3, %4
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then
  store i32 %3, ptr %c, align 4, !tbaa !5
  store i32 %4, ptr %b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.then
  %5 = phi i32 [ %3, %if.then10 ], [ %4, %if.then ]
  %6 = phi i32 [ %4, %if.then10 ], [ %3, %if.then ]
  %switch.tableidx = add i32 %6, -1
  %7 = icmp ult i32 %switch.tableidx, 11
  br i1 %7, label %switch.lookup, label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  %8 = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main, i64 0, i64 %8
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %switch.lookup
  %B.0.neg = phi i16 [ %switch.load, %switch.lookup ], [ -335, %if.end ]
  %switch.tableidx87 = add i32 %5, -1
  %9 = icmp ult i32 %switch.tableidx87, 11
  br i1 %9, label %switch.lookup86, label %sw.epilog33

switch.lookup86:                                  ; preds = %sw.epilog
  %10 = zext nneg i32 %switch.tableidx87 to i64
  %switch.gep88 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.1, i64 0, i64 %10
  %switch.load89 = load i16, ptr %switch.gep88, align 2
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.epilog, %switch.lookup86
  %C.0 = phi i16 [ %switch.load89, %switch.lookup86 ], [ 335, %sw.epilog ]
  %sub = add nsw i16 %C.0, %B.0.neg
  %rem3479 = srem i16 %sub, 7
  %cmp35 = icmp eq i16 %rem3479, 0
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.epilog33
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep83 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %11 = load ptr, ptr %gep83, align 8, !tbaa !11
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then36
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then36
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !29
  %tobool.not.i1.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !35
  br label %for.inc

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i = load ptr, ptr %11, align 8, !tbaa !9
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %14 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %for.inc

if.else:                                          ; preds = %sw.epilog33
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i20 = getelementptr i8, ptr %vtable.i19, i64 -24
  %vbase.offset.i21 = load i64, ptr %vbase.offset.ptr.i20, align 8
  %gep82 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i21
  %15 = load ptr, ptr %gep82, align 8, !tbaa !11
  %tobool.not.i.i.i24 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i24, label %if.then.i.i.i37, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25

if.then.i.i.i37:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25: ; preds = %if.else
  %_M_widen_ok.i.i.i26 = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i26, align 8, !tbaa !29
  %tobool.not.i1.i.i27 = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i27, label %if.end.i.i.i33, label %if.then.i2.i.i28

if.then.i2.i.i28:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25
  %arrayidx.i.i.i29 = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i29, align 1, !tbaa !35
  br label %for.inc

if.end.i.i.i33:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i25
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i34 = load ptr, ptr %15, align 8, !tbaa !9
  %vfn.i.i.i35 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i34, i64 48
  %18 = load ptr, ptr %vfn.i.i.i35, align 8
  %call.i.i.i36 = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %for.inc

if.else42:                                        ; preds = %lor.lhs.false
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %20 = load i32, ptr %c, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %19, %20
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else42
  store i32 %19, ptr %c, align 4, !tbaa !5
  store i32 %20, ptr %b, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else42
  %21 = phi i32 [ %19, %if.then44 ], [ %20, %if.else42 ]
  %22 = phi i32 [ %20, %if.then44 ], [ %19, %if.else42 ]
  %switch.tableidx91 = add i32 %22, -1
  %23 = icmp ult i32 %switch.tableidx91, 11
  br i1 %23, label %switch.lookup90, label %sw.epilog58

switch.lookup90:                                  ; preds = %if.end45
  %24 = zext nneg i32 %switch.tableidx91 to i64
  %switch.gep92 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.2, i64 0, i64 %24
  %switch.load93 = load i16, ptr %switch.gep92, align 2
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %if.end45, %switch.lookup90
  %B.1.neg = phi i16 [ %switch.load93, %switch.lookup90 ], [ -334, %if.end45 ]
  %switch.tableidx95 = add i32 %21, -1
  %25 = icmp ult i32 %switch.tableidx95, 11
  br i1 %25, label %switch.lookup94, label %sw.epilog71

switch.lookup94:                                  ; preds = %sw.epilog58
  %26 = zext nneg i32 %switch.tableidx95 to i64
  %switch.gep96 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.3, i64 0, i64 %26
  %switch.load97 = load i16, ptr %switch.gep96, align 2
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.epilog58, %switch.lookup94
  %C.1 = phi i16 [ %switch.load97, %switch.lookup94 ], [ 334, %sw.epilog58 ]
  %sub72 = add nsw i16 %C.1, %B.1.neg
  %rem7380 = srem i16 %sub72, 7
  %cmp74 = icmp eq i16 %rem7380, 0
  br i1 %cmp74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %sw.epilog71
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %gep81 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i41
  %27 = load ptr, ptr %gep81, align 8, !tbaa !11
  %tobool.not.i.i.i44 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i44, label %if.then.i.i.i57, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45

if.then.i.i.i57:                                  ; preds = %if.then75
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45: ; preds = %if.then75
  %_M_widen_ok.i.i.i46 = getelementptr inbounds nuw i8, ptr %27, i64 56
  %28 = load i8, ptr %_M_widen_ok.i.i.i46, align 8, !tbaa !29
  %tobool.not.i1.i.i47 = icmp eq i8 %28, 0
  br i1 %tobool.not.i1.i.i47, label %if.end.i.i.i53, label %if.then.i2.i.i48

if.then.i2.i.i48:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45
  %arrayidx.i.i.i49 = getelementptr inbounds nuw i8, ptr %27, i64 67
  %29 = load i8, ptr %arrayidx.i.i.i49, align 1, !tbaa !35
  br label %for.inc

if.end.i.i.i53:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i45
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %27)
  %vtable.i.i.i54 = load ptr, ptr %27, align 8, !tbaa !9
  %vfn.i.i.i55 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i54, i64 48
  %30 = load ptr, ptr %vfn.i.i.i55, align 8
  %call.i.i.i56 = call noundef signext i8 %30(ptr noundef nonnull align 8 dereferenceable(570) %27, i8 noundef signext 10)
  br label %for.inc

if.else78:                                        ; preds = %sw.epilog71
  %call1.i15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i59 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i60 = getelementptr i8, ptr %vtable.i59, i64 -24
  %vbase.offset.i61 = load i64, ptr %vbase.offset.ptr.i60, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i61
  %31 = load ptr, ptr %gep, align 8, !tbaa !11
  %tobool.not.i.i.i64 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i.i64, label %if.then.i.i.i77, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65

if.then.i.i.i77:                                  ; preds = %if.else78
  call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65: ; preds = %if.else78
  %_M_widen_ok.i.i.i66 = getelementptr inbounds nuw i8, ptr %31, i64 56
  %32 = load i8, ptr %_M_widen_ok.i.i.i66, align 8, !tbaa !29
  %tobool.not.i1.i.i67 = icmp eq i8 %32, 0
  br i1 %tobool.not.i1.i.i67, label %if.end.i.i.i73, label %if.then.i2.i.i68

if.then.i2.i.i68:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  %arrayidx.i.i.i69 = getelementptr inbounds nuw i8, ptr %31, i64 67
  %33 = load i8, ptr %arrayidx.i.i.i69, align 1, !tbaa !35
  br label %for.inc

if.end.i.i.i73:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i65
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %31)
  %vtable.i.i.i74 = load ptr, ptr %31, align 8, !tbaa !9
  %vfn.i.i.i75 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i74, i64 48
  %34 = load ptr, ptr %vfn.i.i.i75, align 8
  %call.i.i.i76 = call noundef signext i8 %34(ptr noundef nonnull align 8 dereferenceable(570) %31, i8 noundef signext 10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i73, %if.then.i2.i.i68, %if.end.i.i.i53, %if.then.i2.i.i48, %if.end.i.i.i33, %if.then.i2.i.i28, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i30.sink = phi i8 [ %13, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %17, %if.then.i2.i.i28 ], [ %call.i.i.i36, %if.end.i.i.i33 ], [ %29, %if.then.i2.i.i48 ], [ %call.i.i.i56, %if.end.i.i.i53 ], [ %33, %if.then.i2.i.i68 ], [ %call.i.i.i76, %if.end.i.i.i73 ]
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i30.sink)
  %call.i.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i31)
  %inc = add nuw nsw i32 %i.085, 1
  %35 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.085, %35
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !36

for.end:                                          ; preds = %for.inc, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !26, i64 240}
!12 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !13, i64 0, !23, i64 216, !7, i64 224, !24, i64 225, !25, i64 232, !26, i64 240, !27, i64 248, !28, i64 256}
!13 = !{!"_ZTSSt8ios_base", !14, i64 8, !14, i64 16, !15, i64 24, !16, i64 28, !16, i64 32, !17, i64 40, !19, i64 48, !7, i64 64, !6, i64 192, !20, i64 200, !21, i64 208}
!14 = !{!"long", !7, i64 0}
!15 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!16 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!17 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !14, i64 8}
!20 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!21 = !{!"_ZTSSt6locale", !22, i64 0}
!22 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!23 = !{!"p1 _ZTSSo", !18, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!26 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!27 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!28 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!29 = !{!30, !7, i64 56}
!30 = !{!"_ZTSSt5ctypeIcE", !31, i64 0, !32, i64 16, !24, i64 24, !33, i64 32, !33, i64 40, !34, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!31 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!32 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!33 = !{!"p1 int", !18, i64 0}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!7, !7, i64 0}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
