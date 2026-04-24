; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjw1g1b6q.cpp"
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
@.str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %cocktail1 = alloca double, align 8
  %cocktail2 = alloca double, align 8
  %extra1 = alloca [10000 x double], align 16
  %extra2 = alloca [10000 x double], align 16
  %extra = alloca [10000 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cocktail1) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cocktail2) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra1) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra2) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %extra) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %cocktail1)
  %call.i13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %cocktail2)
  %0 = load double, ptr %cocktail2, align 8, !tbaa !5
  %1 = load double, ptr %cocktail1, align 8, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %2, -1
  %3 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %div = fdiv double %0, %1
  br label %for.cond14

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x double], ptr %extra1, i64 0, i64 %indvars.iv
  %call.i14 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx)
  %arrayidx5 = getelementptr inbounds nuw [10000 x double], ptr %extra2, i64 0, i64 %indvars.iv
  %call.i15 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i14, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !5
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5
  %div11 = fdiv double %4, %5
  %arrayidx13 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv
  store double %div11, ptr %arrayidx13, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc36
  %6 = phi i32 [ %2, %for.cond14.preheader ], [ %.pre, %for.inc36 ]
  %indvars.iv41 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next42, %for.inc36 ]
  %sub15 = add nsw i32 %6, -1
  %7 = sext i32 %sub15 to i64
  %cmp16 = icmp slt i64 %indvars.iv41, %7
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond14
  %arrayidx19 = getelementptr inbounds nuw [10000 x double], ptr %extra, i64 0, i64 %indvars.iv41
  %8 = load double, ptr %arrayidx19, align 8, !tbaa !5
  %sub20 = fsub double %8, %div
  %cmp21 = fcmp ogt double %sub20, 5.000000e-02
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 6)
  br label %for.inc36.sink.split

if.else:                                          ; preds = %for.body17
  %cmp24 = fcmp olt double %sub20, -5.000000e-02
  br i1 %cmp24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %if.else
  %call1.i18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 5)
  br label %for.inc36.sink.split

if.else28:                                        ; preds = %if.else
  %9 = call double @llvm.fabs.f64(double %sub20)
  %or.cond = fcmp ugt double %9, 5.000000e-02
  br i1 %or.cond, label %for.inc36, label %if.then31

if.then31:                                        ; preds = %if.else28
  %call1.i21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 4)
  br label %for.inc36.sink.split

for.inc36.sink.split:                             ; preds = %if.then25, %if.then31, %if.then
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i23 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i23)
  %call.i.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  br label %for.inc36

for.inc36:                                        ; preds = %for.inc36.sink.split, %if.else28
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !9
  br label %for.cond14, !llvm.loop !16

for.end38:                                        ; preds = %for.cond14
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra2) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %extra1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cocktail2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cocktail1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = distinct !{!16, !12, !13}
