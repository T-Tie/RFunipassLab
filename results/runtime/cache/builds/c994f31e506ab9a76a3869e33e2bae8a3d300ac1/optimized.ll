; ModuleID = '<stdin>'
source_filename = "/tmp/tmpctdefb4n.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -335, 336) i32 @_Z4mtodiii(i32 noundef %yy, i32 noundef %mm1, i32 noundef %mm2) local_unnamed_addr #0 {
entry:
  %rem = srem i32 %yy, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = and i32 %yy, 3
  %cmp2 = icmp eq i32 %0, 0
  %rem3 = srem i32 %yy, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  switch i32 %mm1, label %sw.default [
    i32 1, label %sw.epilog
    i32 2, label %sw.bb5
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 7, label %sw.bb10
    i32 8, label %sw.bb11
    i32 9, label %sw.bb12
    i32 10, label %sw.bb13
    i32 11, label %sw.bb14
  ]

sw.bb5:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5
  %dd1.0 = phi i32 [ 335, %sw.default ], [ 31, %sw.bb5 ], [ 60, %sw.bb6 ], [ 91, %sw.bb7 ], [ 121, %sw.bb8 ], [ 152, %sw.bb9 ], [ 182, %sw.bb10 ], [ 213, %sw.bb11 ], [ 244, %sw.bb12 ], [ 274, %sw.bb13 ], [ 305, %sw.bb14 ], [ 0, %if.then ]
  switch i32 %mm2, label %sw.default26 [
    i32 1, label %if.end
    i32 2, label %sw.bb16
    i32 3, label %sw.bb17
    i32 4, label %sw.bb18
    i32 5, label %sw.bb19
    i32 6, label %sw.bb20
    i32 7, label %sw.bb21
    i32 8, label %sw.bb22
    i32 9, label %sw.bb23
    i32 10, label %sw.bb24
    i32 11, label %sw.bb25
  ]

sw.bb16:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb17:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb18:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb19:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb20:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb21:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb22:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb23:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb24:                                          ; preds = %sw.epilog
  br label %if.end

sw.bb25:                                          ; preds = %sw.epilog
  br label %if.end

sw.default26:                                     ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  switch i32 %mm1, label %sw.default39 [
    i32 1, label %sw.epilog40
    i32 2, label %sw.bb29
    i32 3, label %sw.bb30
    i32 4, label %sw.bb31
    i32 5, label %sw.bb32
    i32 6, label %sw.bb33
    i32 7, label %sw.bb34
    i32 8, label %sw.bb35
    i32 9, label %sw.bb36
    i32 10, label %sw.bb37
    i32 11, label %sw.bb38
  ]

sw.bb29:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb30:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb31:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb32:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb33:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb34:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb35:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb36:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb37:                                          ; preds = %if.else
  br label %sw.epilog40

sw.bb38:                                          ; preds = %if.else
  br label %sw.epilog40

sw.default39:                                     ; preds = %if.else
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %if.else, %sw.default39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29
  %dd1.2 = phi i32 [ 334, %sw.default39 ], [ 31, %sw.bb29 ], [ 59, %sw.bb30 ], [ 90, %sw.bb31 ], [ 120, %sw.bb32 ], [ 151, %sw.bb33 ], [ 181, %sw.bb34 ], [ 212, %sw.bb35 ], [ 243, %sw.bb36 ], [ 273, %sw.bb37 ], [ 304, %sw.bb38 ], [ 0, %if.else ]
  switch i32 %mm2, label %sw.default52 [
    i32 1, label %if.end
    i32 2, label %sw.bb42
    i32 3, label %sw.bb43
    i32 4, label %sw.bb44
    i32 5, label %sw.bb45
    i32 6, label %sw.bb46
    i32 7, label %sw.bb47
    i32 8, label %sw.bb48
    i32 9, label %sw.bb49
    i32 10, label %sw.bb50
    i32 11, label %sw.bb51
  ]

sw.bb42:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb43:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb44:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb45:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb46:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb47:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb48:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb49:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb50:                                          ; preds = %sw.epilog40
  br label %if.end

sw.bb51:                                          ; preds = %sw.epilog40
  br label %if.end

sw.default52:                                     ; preds = %sw.epilog40
  br label %if.end

if.end:                                           ; preds = %sw.bb42, %sw.bb43, %sw.bb44, %sw.bb45, %sw.bb46, %sw.bb47, %sw.bb48, %sw.bb49, %sw.bb50, %sw.bb51, %sw.default52, %sw.epilog40, %sw.bb16, %sw.bb17, %sw.bb18, %sw.bb19, %sw.bb20, %sw.bb21, %sw.bb22, %sw.bb23, %sw.bb24, %sw.bb25, %sw.default26, %sw.epilog
  %dd2.1 = phi i32 [ 335, %sw.default26 ], [ 31, %sw.bb16 ], [ 60, %sw.bb17 ], [ 91, %sw.bb18 ], [ 121, %sw.bb19 ], [ 152, %sw.bb20 ], [ 182, %sw.bb21 ], [ 213, %sw.bb22 ], [ 244, %sw.bb23 ], [ 274, %sw.bb24 ], [ 305, %sw.bb25 ], [ 0, %sw.epilog ], [ 334, %sw.default52 ], [ 31, %sw.bb42 ], [ 59, %sw.bb43 ], [ 90, %sw.bb44 ], [ 120, %sw.bb45 ], [ 151, %sw.bb46 ], [ 181, %sw.bb47 ], [ 212, %sw.bb48 ], [ 243, %sw.bb49 ], [ 273, %sw.bb50 ], [ 304, %sw.bb51 ], [ 0, %sw.epilog40 ]
  %dd1.1 = phi i32 [ %dd1.0, %sw.default26 ], [ %dd1.0, %sw.bb16 ], [ %dd1.0, %sw.bb17 ], [ %dd1.0, %sw.bb18 ], [ %dd1.0, %sw.bb19 ], [ %dd1.0, %sw.bb20 ], [ %dd1.0, %sw.bb21 ], [ %dd1.0, %sw.bb22 ], [ %dd1.0, %sw.bb23 ], [ %dd1.0, %sw.bb24 ], [ %dd1.0, %sw.bb25 ], [ %dd1.0, %sw.epilog ], [ %dd1.2, %sw.default52 ], [ %dd1.2, %sw.bb42 ], [ %dd1.2, %sw.bb43 ], [ %dd1.2, %sw.bb44 ], [ %dd1.2, %sw.bb45 ], [ %dd1.2, %sw.bb46 ], [ %dd1.2, %sw.bb47 ], [ %dd1.2, %sw.bb48 ], [ %dd1.2, %sw.bb49 ], [ %dd1.2, %sw.bb50 ], [ %dd1.2, %sw.bb51 ], [ %dd1.2, %sw.epilog40 ]
  %sub = sub nsw i32 %dd2.1, %dd1.1
  ret i32 %sub
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  %ans = alloca [201 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #6
  call void @llvm.lifetime.start.p0(i64 804, ptr nonnull %ans) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond8, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %3 = load i32, ptr %month1, align 4, !tbaa !5
  %4 = load i32, ptr %month2, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z4mtodiii(i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %rem.lhs.trunc = trunc nsw i32 %call4 to i16
  %rem7 = srem i16 %rem.lhs.trunc, 7
  %cmp5 = icmp eq i16 %rem7, 0
  %spec.select = zext i1 %cmp5 to i32
  %5 = getelementptr inbounds nuw [201 x i32], ptr %ans, i64 0, i64 %indvars.iv
  store i32 %spec.select, ptr %5, align 4, !tbaa !5
  store i32 0, ptr %month2, align 4, !tbaa !5
  store i32 0, ptr %month1, align 4, !tbaa !5
  store i32 0, ptr %year, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond8:                                        ; preds = %for.cond, %for.body10
  %6 = phi i32 [ %.pre, %for.body10 ], [ %0, %for.cond ]
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body10 ], [ 1, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp9.not = icmp sgt i64 %indvars.iv9, %7
  br i1 %cmp9.not, label %for.end23, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [201 x i32], ptr %ans, i64 0, i64 %indvars.iv9
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, 1
  %.str..str.1 = select i1 %cmp13, ptr @.str, ptr @.str.1
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %.str..str.1)
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call15, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end23:                                        ; preds = %for.cond8
  call void @llvm.lifetime.end.p0(i64 804, ptr nonnull %ans) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
