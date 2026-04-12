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
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef align 16 %ch) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end16 ]
  %call = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call to i8
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %conv3 = sext i8 %conv to i32
  %cmp = icmp eq i32 %conv3, 10
  br i1 %cmp, label %while.end, label %if.else

if.else:                                          ; preds = %while.cond
  %cmp7 = icmp ne i32 %conv3, 32
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else
  %inc = add nsw i32 %i.0, 1
  br label %if.end16

if.else9:                                         ; preds = %if.else
  %sub = sub nsw i32 %i.0, 1
  %idxprom10 = sext i32 %sub to i64
  %arrayidx11 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 %idxprom10
  %0 = load i8, ptr %arrayidx11, align 1, !tbaa !5
  %conv12 = sext i8 %0 to i32
  %cmp13 = icmp ne i32 %conv12, 32
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else9
  %inc15 = add nsw i32 %i.0, 1
  br label %if.end16

if.end16:                                         ; preds = %if.else9, %if.then14, %if.then8
  %i.1 = phi i32 [ %inc, %if.then8 ], [ %inc15, %if.then14 ], [ %i.0, %if.else9 ]
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.end
  %i.3 = phi i32 [ 0, %while.end ], [ %inc22, %for.body ]
  %cmp18 = icmp slt i32 %i.3, %i.0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom19 = sext i32 %i.3 to i64
  %arrayidx20 = getelementptr inbounds [500 x i8], ptr %ch, i64 0, i64 %idxprom19
  %1 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %call21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %1)
  %inc22 = add nsw i32 %i.3, 1
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef %ch) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
