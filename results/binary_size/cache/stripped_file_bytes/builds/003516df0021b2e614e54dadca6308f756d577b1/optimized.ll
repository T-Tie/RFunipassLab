; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxfxbbq0v.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call1, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = phi i32 [ %.pre, %if.then ], [ %0, %entry ]
  %.fr = freeze i32 %1
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %a) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 noundef 0, i64 noundef 400, i1 noundef false)
  store i32 2, ptr %a, align 16
  %cmp4.not = icmp eq i32 %.fr, 0
  br i1 %cmp4.not, label %while.cond.preheader.split, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %sub = add i32 %.fr, -1
  %smax = call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  %smax26 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc36
  %i.0 = phi i32 [ %inc37, %for.inc36 ], [ 0, %for.cond.preheader ]
  %exitcond27.not = icmp eq i32 %i.0, %smax26
  br i1 %exitcond27.not, label %while.cond.preheader.split, label %for.cond5

while.cond.preheader.split:                       ; preds = %for.cond, %if.end
  br label %while.cond

for.cond5:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond12, label %for.inc

for.inc:                                          ; preds = %for.cond5
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !10

for.cond12:                                       ; preds = %for.cond5, %for.inc33
  %indvars.iv20 = phi i64 [ %4, %for.inc33 ], [ 0, %for.cond5 ]
  %exitcond25.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond25.not, label %for.inc36, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv20
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %cmp18 = icmp sgt i32 %3, 9
  %4 = add nuw nsw i64 %indvars.iv20, 1
  br i1 %cmp18, label %if.then19, label %for.inc33

if.then19:                                        ; preds = %for.body15
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %div16 = udiv i32 %3, 10
  %add24 = add nsw i32 %5, %div16
  store i32 %add24, ptr %arrayidx21, align 4, !tbaa !5
  %rem17 = urem i32 %3, 10
  store i32 %rem17, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.body15, %if.then19
  br label %for.cond12, !llvm.loop !13

for.inc36:                                        ; preds = %for.cond12
  %inc37 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

while.cond:                                       ; preds = %while.cond, %while.cond.preheader.split
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %while.cond ], [ 99, %while.cond.preheader.split ]
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %6, 0
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  br i1 %cmp41, label %while.cond, label %for.cond43.preheader, !llvm.loop !15

for.cond43.preheader:                             ; preds = %while.cond
  %7 = trunc nsw i64 %indvars.iv28 to i32
  br label %for.cond43

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc53
  %8 = phi i32 [ %.pre31, %for.inc53 ], [ %.fr, %for.cond43.preheader ]
  %j42.0 = phi i32 [ %dec54, %for.inc53 ], [ %7, %for.cond43.preheader ]
  %cmp44 = icmp sgt i32 %j42.0, -1
  %cmp46 = icmp ne i32 %8, 0
  %or.cond18 = select i1 %cmp44, i1 %cmp46, i1 false
  br i1 %or.cond18, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond43
  %idxprom50 = zext nneg i32 %j42.0 to i64
  %arrayidx51 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %idxprom50
  %9 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !9
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %dec54 = add nsw i32 %j42.0, -1
  %.pre31 = load i32, ptr %n, align 4
  br label %for.cond43, !llvm.loop !16

for.end55:                                        ; preds = %for.cond43
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }

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
