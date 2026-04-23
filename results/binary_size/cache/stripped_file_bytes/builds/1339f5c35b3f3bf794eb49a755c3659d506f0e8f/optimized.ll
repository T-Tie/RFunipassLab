; ModuleID = '<stdin>'
source_filename = "/tmp/tmpaddenp2d.cpp"
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
  %a = alloca [100001 x i32], align 16
  %b = alloca [100001 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400004, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 400004, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %b, i64 4
  store i32 %2, ptr %arrayidx4, align 4, !tbaa !5
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %2)
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc33, %for.end
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc33 ], [ 2, %for.end ]
  %step.0 = phi i32 [ %step.1, %for.inc33 ], [ 1, %for.end ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp8.not = icmp sgt i64 %indvars.iv19, %4
  br i1 %cmp8.not, label %for.end35, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond7
  %arrayidx14 = getelementptr inbounds nuw [100001 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %smax = call i32 @llvm.smax.i32(i32 %step.0, i32 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond10

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc18
  %indvars.iv16 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next17, %for.inc18 ]
  %exitcond = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond, label %for.end20, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [100001 x i32], ptr %b, i64 0, i64 %indvars.iv16
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %6, %7
  br i1 %cmp17, label %for.end20.split.loop.exit, label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond10, !llvm.loop !12

for.end20.split.loop.exit:                        ; preds = %for.body12
  %8 = trunc nuw nsw i64 %indvars.iv16 to i32
  br label %for.end20

for.end20:                                        ; preds = %for.cond10, %for.end20.split.loop.exit
  %j.0.lcssa = phi i32 [ %8, %for.end20.split.loop.exit ], [ %5, %for.cond10 ]
  %add = add nsw i32 %step.0, 1
  %cmp21 = icmp eq i32 %j.0.lcssa, %add
  br i1 %cmp21, label %if.then22, label %for.inc33

if.then22:                                        ; preds = %for.end20
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %9 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %call27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %idxprom30 = sext i32 %j.0.lcssa to i64
  %arrayidx31 = getelementptr inbounds [100001 x i32], ptr %b, i64 0, i64 %idxprom30
  store i32 %10, ptr %arrayidx31, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.end20, %if.then22
  %step.1 = phi i32 [ %j.0.lcssa, %if.then22 ], [ %step.0, %for.end20 ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond7, !llvm.loop !13

for.end35:                                        ; preds = %for.cond7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 400004, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 400004, ptr nonnull %a) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
