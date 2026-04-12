; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3r13z0ra.cpp"
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
  %ch = alloca [500 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef nonnull align 16 %ch) #5
  br label %while.body

while.body:                                       ; preds = %entry, %if.end17
  %i.0 = phi i32 [ 0, %entry ], [ %spec.select, %if.end17 ]
  %call = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call to i8
  %idxprom = zext nneg i32 %i.0 to i64
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %ch, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %sext = shl i32 %call, 24
  %conv3 = ashr exact i32 %sext, 24
  switch i32 %conv3, label %if.end17 [
    i32 10, label %for.cond.preheader
    i32 32, label %if.else9
  ]

for.cond.preheader:                               ; preds = %while.body
  br label %for.cond

if.else9:                                         ; preds = %while.body
  %sub = add nsw i32 %i.0, -1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 %idxprom10
  %0 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %cmp13.not = icmp ne i8 %0, 32
  %inc15 = zext i1 %cmp13.not to i32
  br label %if.end17

if.end17:                                         ; preds = %while.body, %if.else9
  %inc15.sink = phi i32 [ %inc15, %if.else9 ], [ 1, %while.body ]
  %spec.select = add nuw nsw i32 %i.0, %inc15.sink
  br label %while.body, !llvm.loop !8

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %idxprom
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx20 = getelementptr inbounds nuw [500 x i8], ptr %ch, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %call21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef nonnull %ch) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
