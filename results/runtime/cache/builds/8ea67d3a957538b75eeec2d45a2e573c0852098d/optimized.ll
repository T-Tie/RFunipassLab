; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjrmf8o38.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.an = private unnamed_addr constant <{ [11 x i32], [89 x i32] }> <{ [11 x i32] [i32 4, i32 2, i32 8, i32 1, i32 4, i32 7, i32 3, i32 7, i32 0, i32 1, i32 -1], [89 x i32] zeroinitializer }>, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %an = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %an) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %an, ptr noundef nonnull readonly align 16 dereferenceable(400) @__const.main.an, i64 noundef 400, i1 noundef false) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %ldexp = call double @ldexp(double noundef 1.000000e+00, i32 %0) #9
  %conv2 = fptosi double %ldexp to i32
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %conv2)
  br label %if.end49

if.else:                                          ; preds = %entry
  %sub = add nsw i32 %0, -30
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.else
  %i.0 = phi i32 [ 0, %if.else ], [ %inc27, %for.inc26 ]
  %exitcond.not = icmp eq i32 %i.0, %sub
  br i1 %exitcond.not, label %for.cond29, label %for.cond6

for.cond6:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %carry.0 = phi i32 [ %div, %for.inc ], [ 0, %for.cond ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %1, -1
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %mul = shl nsw i32 %1, 1
  %add10 = add nsw i32 %mul, %carry.0
  %div = sdiv i32 %add10, 10
  %rem = srem i32 %add10, 10
  store i32 %rem, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %tobool19.not = icmp eq i32 %carry.0, 0
  br i1 %tobool19.not, label %for.inc26, label %if.then20

if.then20:                                        ; preds = %for.end
  store i32 %carry.0, ptr %arrayidx, align 4, !tbaa !5
  %add23 = add nuw i64 %indvars.iv, 1
  %idxprom24 = and i64 %add23, 4294967295
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %idxprom24
  store i32 -1, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end, %if.then20
  %inc27 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond29:                                       ; preds = %for.cond, %for.cond29
  %indvars.iv6 = phi i32 [ %indvars.iv.next7, %for.cond29 ], [ 100, %for.cond ]
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.cond29 ], [ 100, %for.cond ]
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %indvars.iv3
  %2 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32.not = icmp eq i32 %2, -1
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1
  %indvars.iv.next7 = add i32 %indvars.iv6, -1
  br i1 %cmp32.not, label %for.cond38.preheader, label %for.cond29, !llvm.loop !13

for.cond38.preheader:                             ; preds = %for.cond29
  %3 = zext i32 %indvars.iv6 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc45
  %indvars.iv8 = phi i64 [ %3, %for.cond38.preheader ], [ %5, %for.inc45 ]
  %4 = trunc nuw i64 %indvars.iv8 to i32
  %cmp39 = icmp sgt i32 %4, 0
  br i1 %cmp39, label %for.inc45, label %if.end49

for.inc45:                                        ; preds = %for.cond38
  %5 = add nsw i64 %indvars.iv8, -1
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %an, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  br label %for.cond38, !llvm.loop !14

if.end49:                                         ; preds = %for.cond38, %if.then
  %_ZSt4cout.sink = phi ptr [ %call3, %if.then ], [ @_ZSt4cout, %for.cond38 ]
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %_ZSt4cout.sink, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %an) #10
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @ldexp(double, i32) local_unnamed_addr #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(errnomem: write) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind memory(write) }
attributes #10 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
