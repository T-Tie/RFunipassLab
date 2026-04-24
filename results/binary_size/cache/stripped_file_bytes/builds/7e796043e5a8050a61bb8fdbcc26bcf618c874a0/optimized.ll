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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end82, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %if.end82 ]
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
  %cmp6 = icmp eq i32 %2, 0
  %rem7 = srem i32 %1, 100
  %cmp8 = icmp ne i32 %rem7, 0
  %or.cond = and i1 %cmp6, %cmp8
  br i1 %or.cond, label %if.then, label %if.else42

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
  switch i32 %6, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb11
    i32 3, label %sw.bb12
    i32 4, label %sw.bb13
    i32 5, label %sw.bb14
    i32 6, label %sw.bb15
    i32 7, label %sw.bb16
    i32 8, label %sw.bb17
    i32 9, label %sw.bb18
    i32 10, label %sw.bb19
    i32 11, label %sw.bb20
  ]

sw.bb11:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.default, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11
  %.sink3 = phi i16 [ 305, %sw.bb20 ], [ 274, %sw.bb19 ], [ 244, %sw.bb18 ], [ 213, %sw.bb17 ], [ 182, %sw.bb16 ], [ 152, %sw.bb15 ], [ 121, %sw.bb14 ], [ 91, %sw.bb13 ], [ 60, %sw.bb12 ], [ 31, %sw.bb11 ], [ 335, %sw.default ], [ 0, %if.end ]
  switch i32 %5, label %sw.default32 [
    i32 1, label %if.end82
    i32 2, label %sw.bb22
    i32 3, label %sw.bb23
    i32 4, label %sw.bb24
    i32 5, label %sw.bb25
    i32 6, label %sw.bb26
    i32 7, label %sw.bb27
    i32 8, label %sw.bb28
    i32 9, label %sw.bb29
    i32 10, label %sw.bb30
    i32 11, label %sw.bb31
  ]

sw.bb22:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb23:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb24:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb25:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb26:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb27:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb28:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb29:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb30:                                          ; preds = %sw.epilog
  br label %if.end82

sw.bb31:                                          ; preds = %sw.epilog
  br label %if.end82

sw.default32:                                     ; preds = %sw.epilog
  br label %if.end82

if.else42:                                        ; preds = %lor.lhs.false
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %8 = load i32, ptr %c, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %7, %8
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.else42
  store i32 %7, ptr %c, align 4, !tbaa !5
  store i32 %8, ptr %b, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.else42
  %9 = phi i32 [ %7, %if.then44 ], [ %8, %if.else42 ]
  %10 = phi i32 [ %8, %if.then44 ], [ %7, %if.else42 ]
  switch i32 %10, label %sw.default57 [
    i32 1, label %sw.epilog58
    i32 2, label %sw.bb47
    i32 3, label %sw.bb48
    i32 4, label %sw.bb49
    i32 5, label %sw.bb50
    i32 6, label %sw.bb51
    i32 7, label %sw.bb52
    i32 8, label %sw.bb53
    i32 9, label %sw.bb54
    i32 10, label %sw.bb55
    i32 11, label %sw.bb56
  ]

sw.bb47:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb48:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb49:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb50:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb51:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb52:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb53:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb54:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb55:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.bb56:                                          ; preds = %if.end45
  br label %sw.epilog58

sw.default57:                                     ; preds = %if.end45
  br label %sw.epilog58

sw.epilog58:                                      ; preds = %if.end45, %sw.default57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47
  %.sink = phi i16 [ 304, %sw.bb56 ], [ 273, %sw.bb55 ], [ 243, %sw.bb54 ], [ 212, %sw.bb53 ], [ 181, %sw.bb52 ], [ 151, %sw.bb51 ], [ 120, %sw.bb50 ], [ 90, %sw.bb49 ], [ 59, %sw.bb48 ], [ 31, %sw.bb47 ], [ 334, %sw.default57 ], [ 0, %if.end45 ]
  switch i32 %9, label %sw.default70 [
    i32 1, label %if.end82
    i32 2, label %sw.bb60
    i32 3, label %sw.bb61
    i32 4, label %sw.bb62
    i32 5, label %sw.bb63
    i32 6, label %sw.bb64
    i32 7, label %sw.bb65
    i32 8, label %sw.bb66
    i32 9, label %sw.bb67
    i32 10, label %sw.bb68
    i32 11, label %sw.bb69
  ]

sw.bb60:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb61:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb62:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb63:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb64:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb65:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb66:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb67:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb68:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.bb69:                                          ; preds = %sw.epilog58
  br label %if.end82

sw.default70:                                     ; preds = %sw.epilog58
  br label %if.end82

if.end82:                                         ; preds = %sw.bb60, %sw.bb61, %sw.bb62, %sw.bb63, %sw.bb64, %sw.bb65, %sw.bb66, %sw.bb67, %sw.bb68, %sw.bb69, %sw.default70, %sw.epilog58, %sw.bb22, %sw.bb23, %sw.bb24, %sw.bb25, %sw.bb26, %sw.bb27, %sw.bb28, %sw.bb29, %sw.bb30, %sw.bb31, %sw.default32, %sw.epilog
  %B.0 = phi i16 [ %.sink3, %sw.epilog ], [ %.sink3, %sw.default32 ], [ %.sink3, %sw.bb31 ], [ %.sink3, %sw.bb30 ], [ %.sink3, %sw.bb29 ], [ %.sink3, %sw.bb28 ], [ %.sink3, %sw.bb27 ], [ %.sink3, %sw.bb26 ], [ %.sink3, %sw.bb25 ], [ %.sink3, %sw.bb24 ], [ %.sink3, %sw.bb23 ], [ %.sink3, %sw.bb22 ], [ %.sink, %sw.epilog58 ], [ %.sink, %sw.default70 ], [ %.sink, %sw.bb69 ], [ %.sink, %sw.bb68 ], [ %.sink, %sw.bb67 ], [ %.sink, %sw.bb66 ], [ %.sink, %sw.bb65 ], [ %.sink, %sw.bb64 ], [ %.sink, %sw.bb63 ], [ %.sink, %sw.bb62 ], [ %.sink, %sw.bb61 ], [ %.sink, %sw.bb60 ]
  %C.0 = phi i16 [ 0, %sw.epilog ], [ 335, %sw.default32 ], [ 305, %sw.bb31 ], [ 274, %sw.bb30 ], [ 244, %sw.bb29 ], [ 213, %sw.bb28 ], [ 182, %sw.bb27 ], [ 152, %sw.bb26 ], [ 121, %sw.bb25 ], [ 91, %sw.bb24 ], [ 60, %sw.bb23 ], [ 31, %sw.bb22 ], [ 0, %sw.epilog58 ], [ 334, %sw.default70 ], [ 304, %sw.bb69 ], [ 273, %sw.bb68 ], [ 243, %sw.bb67 ], [ 212, %sw.bb66 ], [ 181, %sw.bb65 ], [ 151, %sw.bb64 ], [ 120, %sw.bb63 ], [ 90, %sw.bb62 ], [ 59, %sw.bb61 ], [ 31, %sw.bb60 ]
  %sub72 = sub nsw i16 %C.0, %B.0
  %rem34.i11 = srem i16 %sub72, 7
  %cmp35.i = icmp eq i16 %rem34.i11, 0
  %spec.select.i = select i1 %cmp35.i, ptr @.str, ptr @.str.1
  %call39.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %spec.select.i)
  %call40.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call39.i, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
