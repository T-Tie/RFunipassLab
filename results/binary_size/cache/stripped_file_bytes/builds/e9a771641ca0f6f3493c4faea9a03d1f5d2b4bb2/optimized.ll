; ModuleID = '<stdin>'
source_filename = "/tmp/tmphqrd8e7w.cpp"
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
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  %b = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80004, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80004, ptr noundef nonnull %b) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %1 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.cond1, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond, %for.inc11
  %2 = phi i32 [ %.pre, %for.inc11 ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc11 ], [ 1, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv4, %3
  br i1 %cmp2.not, label %for.end13, label %for.inc11

for.inc11:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !12
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom9
  store i32 1, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end13:                                        ; preds = %for.cond1
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %5)
  %6 = add i32 %0, 3
  %smin = call i32 @llvm.smin.i32(i32 %0, i32 noundef 0)
  %7 = sub i32 %6, %smin
  %wide.trip.count10 = zext i32 %7 to i64
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end13
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %do.cond ], [ 2, %for.end13 ]
  %arrayidx20 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv7
  %8 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %idxprom21 = sext i32 %8 to i64
  %arrayidx22 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom21
  %9 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !12
  %cmp23 = icmp eq i32 %9, 1
  br i1 %cmp23, label %if.then, label %do.cond

if.then:                                          ; preds = %do.body
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 32)
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call24, i32 noundef %8)
  store i32 0, ptr %arrayidx22, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %do.body, %if.then
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond11.not = icmp eq i64 %indvars.iv.next8, %wide.trip.count10
  br i1 %exitcond11.not, label %do.end, label %do.body, !llvm.loop !14

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 noundef 80004, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 80004, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
