; ModuleID = '<stdin>'
source_filename = "/tmp/tmp68yxwlq6.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %num) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc15 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv14, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %num, i64 0, i64 %indvars.iv14
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %cmp2.not = icmp eq i64 %indvars.iv14, 0
  br i1 %cmp2.not, label %for.inc15, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.body
  %arrayidx.promoted = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %2 = phi i32 [ %arrayidx.promoted, %for.cond3.preheader ], [ %4, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv14
  br i1 %exitcond.not, label %for.inc15, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %num, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %2, %3
  br i1 %cmp10, label %if.then11, label %for.inc

if.then11:                                        ; preds = %for.body5
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body5, %if.then11
  %4 = phi i32 [ %2, %for.body5 ], [ 0, %if.then11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.inc15:                                        ; preds = %for.cond3, %for.body
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond, !llvm.loop !12

for.end17:                                        ; preds = %for.cond
  %5 = load i32, ptr %num, align 16, !tbaa !5
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %5)
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc32, %for.end17
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc32 ], [ 1, %for.end17 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp21 = icmp slt i64 %indvars.iv17, %7
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [20000 x i32], ptr %num, i64 0, i64 %indvars.iv17
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %8, 9
  br i1 %cmp25, label %if.then26, label %for.inc32

if.then26:                                        ; preds = %for.body22
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %9 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body22, %if.then26
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond20, !llvm.loop !13

for.end34:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
