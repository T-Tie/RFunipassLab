; ModuleID = '<stdin>'
source_filename = "/tmp/tmpll59fat0.cpp"
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
  %tomb = alloca [26 x i32], align 16
  %num = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %tomb) #7
  call void @llvm.lifetime.start.p0(i64 noundef 104, ptr noundef nonnull %num) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %tomb, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub4 = add nsw i32 %0, -2
  br label %for.cond5

for.cond5:                                        ; preds = %while.end, %for.end
  %i.1 = phi i32 [ %sub4, %for.end ], [ %dec, %while.end ]
  %final.0 = phi i32 [ 0, %for.end ], [ %spec.select17, %while.end ]
  %2 = zext i32 %i.1 to i64
  %cmp6 = icmp sgt i32 %i.1, -1
  br i1 %cmp6, label %while.cond.preheader, label %for.end31

while.cond.preheader:                             ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw [26 x i32], ptr %tomb, i64 0, i64 %2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %if.end
  %indvars.iv19 = phi i64 [ %2, %while.cond.preheader ], [ %indvars.iv.next20, %if.end ]
  %max.0 = phi i32 [ 0, %while.cond.preheader ], [ %max.1, %if.end ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %3 = trunc nuw i64 %indvars.iv.next20 to i32
  %cmp8 = icmp sgt i32 %0, %3
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx10 = getelementptr inbounds nuw [26 x i32], ptr %tomb, i64 0, i64 %indvars.iv.next20
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %cmp13.not = icmp sgt i32 %4, %5
  br i1 %cmp13.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %arrayidx15 = getelementptr inbounds nuw [26 x i32], ptr %num, i64 0, i64 %indvars.iv.next20
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %max.0)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body
  %max.1 = phi i32 [ %max.0, %while.body ], [ %spec.select, %land.lhs.true ]
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %add20 = add nuw nsw i32 %max.0, 1
  %arrayidx22 = getelementptr inbounds nuw [26 x i32], ptr %num, i64 0, i64 %2
  store i32 %add20, ptr %arrayidx22, align 4, !tbaa !5
  %spec.select17 = call i32 @llvm.smax.i32(i32 %add20, i32 %final.0)
  %dec = add nsw i32 %i.1, -1
  br label %for.cond5, !llvm.loop !14

for.end31:                                        ; preds = %for.cond5
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %final.0)
  %call33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call32, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 104, ptr noundef nonnull %tomb) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
