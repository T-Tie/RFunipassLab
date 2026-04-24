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
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
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
  %switch.tableidx43 = add i32 %5, -1
  %9 = icmp ult i32 %switch.tableidx43, 11
  br i1 %9, label %switch.lookup42, label %sw.epilog33

switch.lookup42:                                  ; preds = %sw.epilog
  %10 = zext nneg i32 %switch.tableidx43 to i64
  %switch.gep44 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.1, i64 0, i64 %10
  %switch.load45 = load i16, ptr %switch.gep44, align 2
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.epilog, %switch.lookup42
  %C.0 = phi i16 [ %switch.load45, %switch.lookup42 ], [ 335, %sw.epilog ]
  %sub = add nsw i16 %C.0, %B.0.neg
  %rem3440 = srem i16 %sub, 7
  %cmp35 = icmp eq i16 %rem3440, 0
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.epilog33
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc

if.else:                                          ; preds = %sw.epilog33
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc

if.else42:                                        ; preds = %lor.lhs.false
  %11 = load i32, ptr %b, align 4, !tbaa !5
  %12 = load i32, ptr %c, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %11, %12
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else42
  store i32 %11, ptr %c, align 4, !tbaa !5
  store i32 %12, ptr %b, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else42
  %13 = phi i32 [ %11, %if.then44 ], [ %12, %if.else42 ]
  %14 = phi i32 [ %12, %if.then44 ], [ %11, %if.else42 ]
  %switch.tableidx47 = add i32 %14, -1
  %15 = icmp ult i32 %switch.tableidx47, 11
  br i1 %15, label %switch.lookup46, label %sw.epilog58

switch.lookup46:                                  ; preds = %if.end45
  %16 = zext nneg i32 %switch.tableidx47 to i64
  %switch.gep48 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.2, i64 0, i64 %16
  %switch.load49 = load i16, ptr %switch.gep48, align 2
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %if.end45, %switch.lookup46
  %B.1.neg = phi i16 [ %switch.load49, %switch.lookup46 ], [ -334, %if.end45 ]
  %switch.tableidx51 = add i32 %13, -1
  %17 = icmp ult i32 %switch.tableidx51, 11
  br i1 %17, label %switch.lookup50, label %sw.epilog71

switch.lookup50:                                  ; preds = %sw.epilog58
  %18 = zext nneg i32 %switch.tableidx51 to i64
  %switch.gep52 = getelementptr inbounds nuw [11 x i16], ptr @switch.table.main.3, i64 0, i64 %18
  %switch.load53 = load i16, ptr %switch.gep52, align 2
  br label %sw.epilog71

sw.epilog71:                                      ; preds = %sw.epilog58, %switch.lookup50
  %C.1 = phi i16 [ %switch.load53, %switch.lookup50 ], [ 334, %sw.epilog58 ]
  %sub72 = add nsw i16 %C.1, %B.1.neg
  %rem7341 = srem i16 %sub72, 7
  %cmp74 = icmp eq i16 %rem7341, 0
  br i1 %cmp74, label %if.then75, label %if.else78

if.then75:                                        ; preds = %sw.epilog71
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  br label %for.inc

if.else78:                                        ; preds = %sw.epilog71
  %call1.i15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then36, %if.else78, %if.then75
  %vtable.i20 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !9
  %vbase.offset.ptr.i21 = getelementptr i8, ptr %vtable.i20, i64 -24
  %vbase.offset.i22 = load i64, ptr %vbase.offset.ptr.i21, align 8
  %add.ptr.i23 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i22
  %call.i = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i23, i8 noundef signext 10)
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i)
  %call.i.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
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

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
