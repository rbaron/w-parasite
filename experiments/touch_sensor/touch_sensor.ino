#define N_SAMPLES 64

void setup()
{
  Serial.begin(9600);
  while (!Serial) delay(10);
}

void loop()
{
  int out = 0;
  for (int i = 0; i < N_SAMPLES; i++) {
    out += touchRead(T0);
  }
  Serial.println((double) out / N_SAMPLES);
  delay(100);
}
