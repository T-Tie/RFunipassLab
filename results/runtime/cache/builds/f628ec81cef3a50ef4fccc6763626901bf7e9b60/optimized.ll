; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjv428e67.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end133, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc.i7, %for.end133 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.cond1, label %for.end138

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %4, %for.end ], [ %0, %for.cond ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv56, %2
  br i1 %cmp2, label %for.cond5, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond1
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 0)
  %3 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %smax85 = add nsw i32 %3, -1
  %wide.trip.count86 = zext nneg i32 %smax85 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond15

for.cond5:                                        ; preds = %for.cond1, %for.body8
  %4 = phi i32 [ %.pre, %for.body8 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond1

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc131
  %indvars.iv82 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next83, %for.inc131 ]
  %indvars.iv59 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next60, %for.inc131 ]
  %total.0 = phi i32 [ 0, %for.cond15.preheader ], [ %add130, %for.inc131 ]
  %exitcond87.not = icmp eq i64 %indvars.iv82, %wide.trip.count86
  br i1 %exitcond87.not, label %for.end133, label %for.cond20

for.cond20:                                       ; preds = %for.cond15, %for.inc66
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.inc66 ], [ 0, %for.cond15 ]
  %exitcond.not = icmp eq i64 %indvars.iv67, %wide.trip.count
  br i1 %exitcond.not, label %for.cond70, label %for.body23

for.body23:                                       ; preds = %for.cond20
  %6 = add nuw i64 %indvars.iv67, 4294967295
  %7 = and i64 %6, 4294967295
  %or.cond = icmp samesign ult i64 %7, %indvars.iv82
  br i1 %or.cond, label %for.inc66, label %if.end

if.end:                                           ; preds = %for.body23
  %arrayidx27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv67
  %8 = load i32, ptr %arrayidx27, align 16, !tbaa !5, !invariant.load !9
  br label %for.cond30

for.cond30:                                       ; preds = %for.body33, %if.end
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body33 ], [ %indvars.iv59, %if.end ]
  %minValue.0 = phi i32 [ %spec.select, %for.body33 ], [ %8, %if.end ]
  %9 = trunc nuw i64 %indvars.iv61 to i32
  %cmp31 = icmp sgt i32 %1, %9
  br i1 %cmp31, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond30
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv61
  %10 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %spec.select = call i32 @llvm.smin.i32(i32 %10, i32 %minValue.0)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond30, !llvm.loop !10

for.end47:                                        ; preds = %for.cond30
  %sub51 = sub nsw i32 %8, %minValue.0
  store i32 %sub51, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.body57, %for.end47
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.body57 ], [ %indvars.iv59, %for.end47 ]
  %11 = trunc nuw i64 %indvars.iv64 to i32
  %cmp55 = icmp sgt i32 %1, %11
  br i1 %cmp55, label %for.body57, label %for.inc66

for.body57:                                       ; preds = %for.cond54
  %arrayidx61 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv64
  %12 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !9
  %sub62 = sub nsw i32 %12, %minValue.0
  store i32 %sub62, ptr %arrayidx61, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond54

for.inc66:                                        ; preds = %for.cond54, %for.body23
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond20, !llvm.loop !13

for.cond70:                                       ; preds = %for.cond20, %for.inc121
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc121 ], [ 0, %for.cond20 ]
  %exitcond81.not = icmp eq i64 %indvars.iv77, %wide.trip.count
  br i1 %exitcond81.not, label %for.inc131, label %for.body73

for.body73:                                       ; preds = %for.cond70
  %13 = add nuw i64 %indvars.iv77, 4294967295
  %14 = and i64 %13, 4294967295
  %or.cond53 = icmp samesign ult i64 %14, %indvars.iv82
  br i1 %or.cond53, label %for.inc121, label %if.end78

if.end78:                                         ; preds = %for.body73
  %arrayidx82 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv77
  %15 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond85

for.cond85:                                       ; preds = %for.body88, %if.end78
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body88 ], [ %indvars.iv59, %if.end78 ]
  %minValue79.0 = phi i32 [ %spec.select54, %for.body88 ], [ %15, %if.end78 ]
  %16 = trunc nuw i64 %indvars.iv71 to i32
  %cmp86 = icmp sgt i32 %1, %16
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  %arrayidx92 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv77
  %17 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !9
  %spec.select54 = call i32 @llvm.smin.i32(i32 %17, i32 %minValue79.0)
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond85, !llvm.loop !14

for.end102:                                       ; preds = %for.cond85
  %sub106 = sub nsw i32 %15, %minValue79.0
  store i32 %sub106, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.body112, %for.end102
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body112 ], [ %indvars.iv59, %for.end102 ]
  %18 = trunc nuw i64 %indvars.iv74 to i32
  %cmp110 = icmp sgt i32 %1, %18
  br i1 %cmp110, label %for.body112, label %for.inc121

for.body112:                                      ; preds = %for.cond109
  %arrayidx116 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv74, i64 %indvars.iv77
  %19 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !9
  %sub117 = sub nsw i32 %19, %minValue79.0
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond109

for.inc121:                                       ; preds = %for.cond109, %for.body73
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond70, !llvm.loop !15

for.inc131:                                       ; preds = %for.cond70
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %arrayidx129 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv.next83, i64 %indvars.iv.next83
  %20 = load i32, ptr %arrayidx129, align 4, !tbaa !5, !invariant.load !9
  %add130 = add nsw i32 %20, %total.0
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond15, !llvm.loop !16

for.end133:                                       ; preds = %for.cond15
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %total.0)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc.i7 = add nuw nsw i32 %k.0, 1
  br label %for.cond

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool.not = icmp eq ptr %__f, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !17, !invariant.load !9
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !25, !invariant.load !9
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !26, !invariant.load !9
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !9
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !7, i64 56}
!18 = !{!"_ZTSSt5ctypeIcE", !19, i64 0, !20, i64 16, !22, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!19 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!20 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 int", !21, i64 0}
!24 = !{!"p1 short", !21, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
