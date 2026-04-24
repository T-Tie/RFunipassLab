; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdvat7drf.cpp"
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
  %a = alloca [33 x i32], align 16
  %Bit = alloca [33 x i32], align 16
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %a, i8 0, i64 132, i1 false)
  store i32 1, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %Bit) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %Bit, i8 0, i64 132, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc23, %for.cond.cleanup3 ]
  %exitcond18.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond18.not, label %for.cond26, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %3, %for.body4 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 32
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %inc23 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.body4:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [33 x i32], ptr %a, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %arrayidx6 = getelementptr inbounds nuw [33 x i32], ptr %Bit, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %mul, %2
  %cmp11 = icmp sgt i32 %add, 9
  %sub = add nsw i32 %add, -10
  %spec.select20 = select i1 %cmp11, i32 %sub, i32 %add
  %spec.select21 = zext i1 %cmp11 to i32
  store i32 %spec.select20, ptr %arrayidx, align 4, !tbaa !5
  %3 = add nuw nsw i64 %indvars.iv, 1
  %arrayidx18 = getelementptr inbounds nuw [33 x i32], ptr %Bit, i64 0, i64 %3
  store i32 %spec.select21, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.cond26:                                       ; preds = %for.cond, %for.inc41
  %i25.0 = phi i32 [ %dec, %for.inc41 ], [ 31, %for.cond ]
  %Begin.0 = phi i32 [ %spec.select, %for.inc41 ], [ 0, %for.cond ]
  %cmp27 = icmp sgt i32 %i25.0, -1
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !13
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i14 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i14)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %Bit) #6
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %a) #6
  ret i32 0

for.body29:                                       ; preds = %for.cond26
  %idxprom30 = zext nneg i32 %i25.0 to i64
  %arrayidx31 = getelementptr inbounds nuw [33 x i32], ptr %a, i64 0, i64 %idxprom30
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32.not = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp32.not, i32 %Begin.0, i32 1
  %cmp35.not = icmp eq i32 %spec.select, 0
  br i1 %cmp35.not, label %for.inc41, label %if.then36

if.then36:                                        ; preds = %for.body29
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %4)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body29, %if.then36
  %dec = add nsw i32 %i25.0, -1
  br label %for.cond26, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !8, i64 0}
!15 = distinct !{!15, !10, !11}
