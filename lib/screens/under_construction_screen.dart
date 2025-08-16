import { Card, CardContent } from "@/components/ui/card"

export default function UnderConstruction() {
  return (
    <div className="flex items-center justify-center h-screen bg-gray-100">
      <Card className="p-8 rounded-2xl shadow-lg text-center max-w-md">
        <CardContent className="flex flex-col items-center">
          {/* Icon */}
          <img 
            src="/construction-icon.png" 
            alt="Under Construction Icon" 
            width={300} 
            height={300} 
            className="mb-6"
          />

          {/* Under Construction */}
          <h1 className="font-bold text-[22px] mb-2">
            Under Construction
          </h1>
          
          {/* Description */}
          <p className="text-[22px] mb-8">
            We&apos;re working hard to give you the best experience. Stay tuned!
          </p>

          {/* Developer */}
          <p className="font-bold text-[14px]">Developer</p>
          <p className="text-[14px] mb-4">Muhammad Anus Gul</p>

          {/* UI/UX */}
          <p className="font-bold text-[14px]">UI/UX</p>
          <p className="text-[14px]">Irman</p>
        </CardContent>
      </Card>
    </div>
  )
}